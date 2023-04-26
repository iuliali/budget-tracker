package com.budgettracker.api.services;

import com.budgettracker.api.auth_facade.AuthenticationFacade;
import com.budgettracker.api.dtos.ExpenseDto;
import com.budgettracker.api.dtos.NewExpenseDto;
import com.budgettracker.api.exceptions.ExpenseNotFoundException;
import com.budgettracker.api.exceptions.NoUserCategoryForExpenseException;
import com.budgettracker.api.exceptions.UserHasNoExpensesException;
import com.budgettracker.api.models.Expense;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.ExpenseRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ExpenseService {
    private final ExpenseRepository expenseRepository;
    private final UserCategoryService userCategoryService;
    private final UserService userService;
    private final AuthenticationFacade authenticationFacade;

    public ExpenseDto getExpenseById(BigInteger id) {
        return new ExpenseDto(expenseRepository.findById(id).orElseThrow(
                ExpenseNotFoundException::new
        ));
    }

    public String createExpense(NewExpenseDto expenseDto){
        Expense expense = new Expense();
        expense.setTo(expenseDto.getTo());
        expense.setAmount(expenseDto.getAmount());
        expense.setCurrency(expenseDto.getCurrency());
        expense.setRegisteredAt(LocalDateTime.now());
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(expenseDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForExpenseException::new
                );
        expense.setUserCategory(userCategory);
        expenseRepository.save(expense);
        return "Expense has been added successfully";
    }

    public List<ExpenseDto> getExpenses(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        return expenseRepository.findExpensesByUser(user)
                .orElseThrow(
                        UserHasNoExpensesException:: new
                )
                .stream()
                .map(ExpenseDto::new)
                .toList();
    }


    public String updateExpense(BigInteger id, NewExpenseDto expenseDto){
        var expense = expenseRepository.findById(id).orElseThrow(
                ExpenseNotFoundException::new
        );
        expense.setTo(expenseDto.getTo());
        expense.setAmount(expenseDto.getAmount());
        expense.setCurrency(expenseDto.getCurrency());
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(expenseDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForExpenseException::new
                );
        expense.setUserCategory(userCategory);
        expenseRepository.save(expense);
        return "Expense has been updated successfully";
    }

    @Transactional
    public String deleteExpense(BigInteger id){
        var expense = expenseRepository.findById(id).orElseThrow(
                ExpenseNotFoundException::new
        );
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(expense.getUserCategory().getId())
                .orElseThrow(
                        NoUserCategoryForExpenseException::new
                );
        expenseRepository.deleteById(id);
        return "Expense has been deleted successfully";
    }
}
