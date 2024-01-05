package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.ExpenseDto;
import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.BudgetNotFoundException;
import com.budgettracker.api.budgeting.exceptions.ExpenseNotFoundException;
import com.budgettracker.api.budgeting.exceptions.NoUserCategoryForExpenseException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoExpensesException;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ExpenseService {
    private final ExpenseRepository expenseRepository;
    private final UserCategoryService userCategoryService;
    private final UserService userService;
    private final BudgetService budgetService;
    private final AuthenticationFacade authenticationFacade;
    private final StatisticsService statisticsService;
    private final CurrencyService currencyService;

    public ExpenseDto getExpenseById(BigInteger id) {
        return new ExpenseDto(expenseRepository.findById(id).orElseThrow(
                ExpenseNotFoundException::new
        ));
    }

    public boolean checkIfNewExpenseIsOverBudget(BigDecimal newExpenseAmount, Currency currency, BigInteger userCategoryId){
        BudgetDTO budget;
        BigDecimal currentAmount;
        try {
            budget = budgetService.getActiveBudget(userCategoryId, Optional.empty());
            currentAmount = budget.getAmount();
        } catch (BudgetNotFoundException exc) {
            currentAmount = new BigDecimal(Integer.MAX_VALUE);
        }
        newExpenseAmount = newExpenseAmount.multiply(currencyService.getExchange(currency, userService.getDefaultCurrency()));
        BigDecimal sumOfExpenses = expensesSumByUserCategoryIdForCurrentMonth(userCategoryId);
        return sumOfExpenses.add(newExpenseAmount).compareTo(currentAmount) > 0;
    }

    public Map<String, String> createExpense(NewExpenseDto expenseDto){

        String warning = "No warning";
        if (checkIfNewExpenseIsOverBudget(expenseDto.getAmount(), expenseDto.getCurrency(), expenseDto.getUserCategoryId()))
            warning = "You are over budget for this category";

        Expense expense = addNewExpense(expenseDto);

        return Map.of("message", "Expense has been added successfully", "warning", warning);
    }

    public Expense addNewExpense(NewExpenseDto expenseDto){
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(expenseDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForExpenseException::new
                );
        Expense expense = NewExpenseDto.toExpense(expenseDto);
        expense.setUserCategory(userCategory);
        expenseRepository.save(expense);
        return expense;
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

    public List<ExpenseDto> getExpensesByCategory(BigInteger id){
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(id)
                .orElseThrow(
                        NoUserCategoryForExpenseException::new
                );
        return expenseRepository.findExpensesByCategoryForUser(userCategory.getUser(), id)
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

    public BigDecimal expensesSumByUserCategoryIdForCurrentMonth(BigInteger userCategoryId) {
        LocalDateTime currentDate = LocalDateTime.now();
        Optional<List<Expense>> expenses = expenseRepository.expensesByUserCategoryBetweenDates(
                userCategoryId,
                LocalDateTime.of(currentDate.getYear(), currentDate.getMonth(), 1, 0, 0),
                LocalDateTime.of(currentDate.getYear(), currentDate.getMonth(), currentDate.getDayOfMonth(), 23, 59)
        );

        return statisticsService.getExpenseSum(expenses, userService.getDefaultCurrency());
    }

    public BigDecimal getSumOfExpenses(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        Optional<BigDecimal> sum = expenseRepository.sumOfExpensesByUser(user);
        return sum.orElseGet(() -> BigDecimal.valueOf(0));
    }
}
