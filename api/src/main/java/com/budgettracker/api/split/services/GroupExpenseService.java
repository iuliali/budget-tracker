package com.budgettracker.api.split.services;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.services.ExpenseService;
import com.budgettracker.api.split.dtos.NewGroupExpenseDto;
import com.budgettracker.api.split.exceptions.GroupDoesNotExistException;
import com.budgettracker.api.split.models.Debt;
import com.budgettracker.api.split.models.Group;
import com.budgettracker.api.split.models.GroupExpense;
import com.budgettracker.api.split.repositories.DebtRepository;
import com.budgettracker.api.split.repositories.GroupExpenseRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class GroupExpenseService {
    private final GroupExpenseRepository groupExpenseRepository;
    private final GroupService groupService;
    private final ExpenseService expenseService;
    private final UserService userService;
    private final DebtRepository debtRepository;
    public void createGroupExpense(NewGroupExpenseDto newGroupExpenseDto) {
        Group group =  groupService.findGroupById(newGroupExpenseDto.getGroupId()).orElseThrow(
                () -> new GroupDoesNotExistException(GroupExpenseService.class)
        );
        NewExpenseDto newExpenseDto = new NewExpenseDto("Group Expense", newGroupExpenseDto.getAmount(),
                newGroupExpenseDto.getCurrency(), newGroupExpenseDto.getUserCategoryId());
        Expense expense = expenseService.addNewExpense(newExpenseDto);
        GroupExpense groupExpense = createNewExpense(newGroupExpenseDto, expense, group);
        groupExpenseRepository.save(groupExpense);
    }

    public GroupExpense createNewExpense(NewGroupExpenseDto newGroupExpenseDto, Expense expense,
                                         Group group) {
        GroupExpense groupExpense = new GroupExpense();
        groupExpense.setGroup(group);
        groupExpense.setExpense(expense);

        // create debts
        List<Debt> debts = new ArrayList<>();
        //TODO exception daca lungimile celor doua liste memberIds si amounts sunt diferite
        //TODO DE TESTAT DACA TOTI SUNT MEMBRII GRUPULUI
        for(int i = 0; i < newGroupExpenseDto.getMemberIds().size(); i++) {
            Debt debt = new Debt();
            debt.setGroupExpense(groupExpense);
            debt.setAmount(newGroupExpenseDto.getAmounts().get(i));
            debt.setCreditor(groupService.findMemberByUserId(userService.getAuthenticatedUser().getId()));
            debt.setDebtor(groupService.findMemberById(newGroupExpenseDto.getMemberIds().get(i)));
            debts.add(debt);
        }

        debtRepository.saveAll(debts);
        return groupExpense;
    }
}
