package com.budgettracker.api.budget;

import com.budgettracker.api.budget.dtos.BudgetDTO;
import com.budgettracker.api.budget.dtos.BudgetUpdateDTO;
import com.budgettracker.api.budget.dtos.NewBudgetDTO;
import com.budgettracker.api.budget.exceptions.ActiveBudgetAlreadyExistsException;
import com.budgettracker.api.budget.exceptions.BudgetNotFoundException;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.services.ExpenseService;
import com.budgettracker.api.services.UserCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class BudgetService {
    private final BudgetRepository budgetRepository;
    private final UserCategoryService userCategoryService;
    private final ExpenseService expenseService;

    protected boolean checkIfThereIsNoActiveBudgetForCategory(UserCategory userCategory) {
        return budgetRepository.findActiveByUserCategory(userCategory).isPresent();
    }

    public String createBudget(NewBudgetDTO newBudget){
        UserCategory userCategory = userCategoryService.getUserCategoryById(newBudget.getUserCategoryId());
        if(checkIfThereIsNoActiveBudgetForCategory(userCategory)){
            throw new ActiveBudgetAlreadyExistsException();
        }
        Budget budget = new Budget();
        budget.setAmount(newBudget.getAmount());
        budget.setCreatedAt(LocalDateTime.now());
        budget.setUserCategory(userCategory);
        budgetRepository.save(budget);
        return "Budget successfully created";
    }

    public String deleteActiveBudget(BigInteger userCategoryId){
        UserCategory userCategory = userCategoryService.getUserCategoryById(userCategoryId);
        Budget budget = budgetRepository.findActiveByUserCategory(userCategory).orElseThrow(
                BudgetNotFoundException::new
        );
        budgetRepository.deleteByUserCategoryId(userCategory);
        return "Budget successfully deleted";
    }

    public String updateActiveBudget(BigInteger userCategoryId, BudgetUpdateDTO newBudget){
        UserCategory userCategory = userCategoryService.getUserCategoryById(userCategoryId);
        Budget budget = budgetRepository.findActiveByUserCategory(userCategory).orElseThrow(
                BudgetNotFoundException::new
        );
        budget.setAmount(newBudget.getAmount());
        budgetRepository.save(budget);
        return "Budget successfully updated";
    }

    public BudgetDTO getActiveBudget(BigInteger userCategoryId){
        UserCategory userCategory = userCategoryService.getUserCategoryById(userCategoryId);
        Budget budget = budgetRepository.findActiveByUserCategory(userCategory).orElseThrow(
                BudgetNotFoundException::new
        );
        return new BudgetDTO(budget);
    }

    public boolean checkIfNewExpenseIsOverBudget(BigDecimal newExpenseAmount, BigInteger userCategoryId){
        Budget budget = budgetRepository.findActiveByUserCategory(userCategoryService.getUserCategoryById(userCategoryId)).orElseThrow(
                BudgetNotFoundException::new
        );
        BigDecimal sumOfExpenses = expenseService.expensesSumByUserCategoryId(userCategoryId);
        return sumOfExpenses.add(newExpenseAmount).compareTo(budget.getAmount()) > 0;

    }
}
