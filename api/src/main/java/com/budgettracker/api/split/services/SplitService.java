package com.budgettracker.api.split.services;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import com.budgettracker.api.split.algorithm.SimplifyDebts;
import com.budgettracker.api.split.algorithm.SplitResult;
import com.budgettracker.api.split.algorithm.SplitTransaction;
import com.budgettracker.api.split.dtos.NewGroupExpenseDto;
import com.budgettracker.api.split.dtos.SettleTransactionDto;
import com.budgettracker.api.split.models.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
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

    public List<SplitResult> runSplitExpenseAlgorithm(BigInteger groupId) {
        /**
          Runs simplify debts algo in the group given
          Returns : only debts to or from currently logged user
         */
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
        return splitResults.stream().filter(splitResult -> Objects.equals(splitResult.getFrom(), memberId)
                    || Objects.equals(splitResult.getTo(), memberId)).toList();
    }

    public void settle(SettleTransactionDto settleTransactionDto) {
        User user = userService.getAuthenticatedUser();
        Member member = groupService.findMemberByUserIdAndGroupId(user.getId(), settleTransactionDto.getGroupId());
        BigInteger splitUserCategoryId = userCategoryService
                .getUserCategoryByName(SPLIT_PAYMENTS_USER_CATEGORY_NAME, member.getUser().getId())
                .getId();
        NewGroupExpenseDto newGroupExpenseDto = new NewGroupExpenseDto(settleTransactionDto,
                                                                        member.getId(),
                                                                        splitUserCategoryId);
        groupExpenseService.createGroupExpense(newGroupExpenseDto);
    }
}
