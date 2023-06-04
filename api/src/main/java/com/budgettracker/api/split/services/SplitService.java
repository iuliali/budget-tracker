package com.budgettracker.api.split.services;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.NewIncomeDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.IncomeService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import com.budgettracker.api.split.algorithm.SimplifyDebts;
import com.budgettracker.api.split.algorithm.SplitResult;
import com.budgettracker.api.split.algorithm.SplitTransaction;
import com.budgettracker.api.split.dtos.*;
import com.budgettracker.api.split.models.Group;
import com.budgettracker.api.split.models.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import static com.budgettracker.api.constants.Constants.SPLIT_PAYMENTS_USER_CATEGORY_NAME;

@Service
@RequiredArgsConstructor
public class SplitService {
    private final GroupExpenseService groupExpenseService;
    private final UserService userService;
    private final GroupService groupService;
    private final UserCategoryService userCategoryService;
    private final IncomeService incomeService;

    public List<SplitResult> runSplitExpenseAlgorithm(BigInteger groupId) {
        List<SplitTransaction> splitTransactionList = groupExpenseService.getTransactionsInGroup(groupId)
                .stream()
                .filter(splitTransaction -> !Objects.equals(splitTransaction.getTo(), splitTransaction.getFrom()))
                .toList();
        List<BigInteger> membersIds = splitTransactionList.stream()
                .flatMap(splitTransaction -> splitTransaction.getMemberIds().stream())
                .distinct()
                .toList();
        List<SplitResult> splitResults = SimplifyDebts.createGraphForDebts(membersIds, splitTransactionList);
        BigInteger memberId = groupService.findMemberByUserIdAndGroupId(userService.getAuthenticatedUser().getId(),
                groupId).getId();
        return splitResults.stream()
                .distinct()
//                .filter(splitResult -> Objects.equals(splitResult.getFrom(), memberId)
//                || Objects.equals(splitResult.getTo(), memberId))
                .toList();
    }

    public List<SplitDto> getGroupDebtStatus(BigInteger groupId) {
        /**
          Runs simplify debts algo in the group given
          Returns : only debts to or from currently logged user
         */
        List<SplitResult> filteredResults = runSplitExpenseAlgorithm(groupId);

        List<SplitDto> splitDtos = new ArrayList<>();
        for(SplitResult splitResult: filteredResults) {
            MemberDto memberFrom = new MemberDto(splitResult.getFrom(),
                    groupService.findMemberById(splitResult.getFrom()).getUser().getId(),
                    groupService.findMemberById(splitResult.getFrom()).getUser().getUsername());
            MemberDto memberTo = new MemberDto(splitResult.getTo(),
                    groupService.findMemberById(splitResult.getTo()).getUser().getId(),
                    groupService.findMemberById(splitResult.getTo()).getUser().getUsername());
            splitDtos.add(new SplitDto(memberFrom, memberTo, splitResult.getDebt()));

        }
        return splitDtos;
    }

    public void settle(SettleTransactionDto settleTransactionDto) {
        User user = userService.getAuthenticatedUser();
        Member member = groupService.findMemberByUserIdAndGroupId(user.getId(), settleTransactionDto.getGroupId());

        NewGroupExpenseDto newGroupExpenseDto = new NewGroupExpenseDto(settleTransactionDto);
        groupExpenseService.createGroupExpense(newGroupExpenseDto);

//        if (settleTransactionDto.isAddIncome()) {
//            addIncomeOnSettle(settleTransactionDto);
//        }
    }

    private void addIncomeOnSettle(SettleTransactionDto settleTransactionDto) {
        Member member = groupService.findMemberById(settleTransactionDto.getMemberId());
        User user = userService.findUserById(member.getId());
        BigInteger splitCategoryId = userCategoryService.getUserCategoryByName(
                                                 SPLIT_PAYMENTS_USER_CATEGORY_NAME, user.getId())
                                                .getId();
        incomeService.createIncome(new NewIncomeDto(userService.getAuthenticatedUser().getUsername(),
                settleTransactionDto.getSettleAmount(), Currency.RON, splitCategoryId));
    }
    private BigDecimal getTotalPlus(List<SplitResult> splitResults, BigInteger memberId) {
        return splitResults.stream()
                .filter(splitResult -> Objects.equals(splitResult.getTo(), memberId))
                .map(SplitResult::getDebt)
                .reduce(BigDecimal.ZERO, BigDecimal::add);
    }

    private BigDecimal getTotalMinus(List<SplitResult> splitResults, BigInteger memberId) {
        return splitResults.stream()
                .filter(splitResult -> Objects.equals(splitResult.getFrom(), memberId))
                .map(SplitResult::getDebt)
                .reduce(BigDecimal.ZERO, BigDecimal::add);
    }
    public List<GroupBalanceDto> getAllGroupsDebts() {
        List<GroupBalanceDto> groupBalanceList = new ArrayList<>();
        User user = userService.getAuthenticatedUser();
        List<Group> groups = groupService.getGroupsByUserId(user.getId());
        for(Group group: groups) {
            Member member = groupService.findMemberByUserIdAndGroupId(user.getId(), group.getId());
            List<SplitResult> splitResults = runSplitExpenseAlgorithm(group.getId());
            BigDecimal totalPlus = getTotalPlus(splitResults, member.getId());
            BigDecimal totalMinus = getTotalMinus(splitResults, member.getId());
            groupBalanceList.add(new GroupBalanceDto(group.getId(), group.getGroupName(),
                                                        totalPlus.subtract(totalMinus)));
        }
        return groupBalanceList;
    }
}
