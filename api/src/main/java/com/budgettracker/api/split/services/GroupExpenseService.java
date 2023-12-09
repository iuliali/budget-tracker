package com.budgettracker.api.split.services;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.services.ExpenseService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import com.budgettracker.api.split.algorithm.SplitTransaction;
import com.budgettracker.api.split.dtos.NewGroupExpenseDto;
import com.budgettracker.api.split.exceptions.GroupDoesNotExistException;
import com.budgettracker.api.split.exceptions.GroupExpenseBadConfigurationException;
import com.budgettracker.api.split.models.Debt;
import com.budgettracker.api.split.models.Group;
import com.budgettracker.api.split.models.GroupExpense;
import com.budgettracker.api.split.repositories.DebtRepository;
import com.budgettracker.api.split.repositories.GroupExpenseRepository;
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
public class GroupExpenseService {
    private final GroupExpenseRepository groupExpenseRepository;
    private final GroupService groupService;
    private final ExpenseService expenseService;
    private final UserService userService;
    private final DebtRepository debtRepository;
    private final UserCategoryService userCategoryService;
    public void createGroupExpense(NewGroupExpenseDto newGroupExpenseDto) {
        Group group =  groupService.findGroupById(newGroupExpenseDto.getGroupId()).orElseThrow(
                () -> new GroupDoesNotExistException(GroupExpenseService.class)
        );
        NewExpenseDto newExpenseDto = new NewExpenseDto("Group Expense", newGroupExpenseDto.getAmount(),
                Currency.RON, userCategoryService.getUserCategoryByName(SPLIT_PAYMENTS_USER_CATEGORY_NAME,
                userService.getAuthenticatedUser().getId()).getId());

        validateGroupExpenseConfiguration(newGroupExpenseDto);

        Expense expense = expenseService.addNewExpense(newExpenseDto);
        createNewExpense(newGroupExpenseDto, expense, group);
    }

    private boolean validateGroupMembers(List<BigInteger> members, BigInteger groupId){
        return members.stream()
                .map(groupService::findMemberById)
                .allMatch(m -> Objects.equals(m.getGroup().getId(), groupId));
    }
    private boolean validateAmounts(BigDecimal amount, List<BigDecimal> amounts) {
        return Objects.equals(amount, amounts.stream().reduce(BigDecimal.valueOf(0), BigDecimal::add));
    }
    private void validateGroupExpenseConfiguration(NewGroupExpenseDto newGroupExpenseDto) {
        if (newGroupExpenseDto.getMemberIds().size() != newGroupExpenseDto.getAmounts().size()
        || !validateGroupMembers(newGroupExpenseDto.getMemberIds(), newGroupExpenseDto.getGroupId())) {
            throw new GroupExpenseBadConfigurationException();
        }
        if (!validateAmounts(newGroupExpenseDto.getAmount(), newGroupExpenseDto.getAmounts())) {
            throw new GroupExpenseBadConfigurationException();
        }
    }
    public void createNewExpense(NewGroupExpenseDto newGroupExpenseDto, Expense expense,
                                 Group group) {
        GroupExpense groupExpense = new GroupExpense();
        groupExpense.setGroup(group);
        groupExpense.setExpense(expense);

        List<Debt> debts = new ArrayList<>();
        for(int i = 0; i < newGroupExpenseDto.getMemberIds().size(); i++) {
            Debt debt = new Debt();
            debt.setGroupExpense(groupExpense);
            debt.setAmount(newGroupExpenseDto.getAmounts().get(i));
            debt.setCreditor(groupService.findMemberByUserIdAndGroupId(
                    userService.getAuthenticatedUser().getId(), group.getId())
            );
            debt.setDebtor(groupService.findMemberById(newGroupExpenseDto.getMemberIds().get(i)));
            debts.add(debt);
        }
        groupExpenseRepository.save(groupExpense);
        debtRepository.saveAll(debts);
    }

    public List<SplitTransaction> getTransactionsInGroup (BigInteger groupId) {
        List<BigInteger> groupExpenseList = groupExpenseRepository.getAllByGroup(groupId).stream()
                .map(GroupExpense::getId).toList();
        return groupExpenseList.stream()
                .flatMap(groupExpenseId -> debtRepository.getDebtsByGroupExpense(groupExpenseId).stream())
                .map(SplitTransaction::new)
                .toList();
    }
}
