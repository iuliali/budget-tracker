package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.BudgetUpdateDTO;
import com.budgettracker.api.budgeting.dtos.NewBudgetDTO;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.ActiveBudgetAlreadyExistsException;
import com.budgettracker.api.budgeting.exceptions.BudgetNotFoundException;
import com.budgettracker.api.budgeting.models.Budget;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.BudgetRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class BudgetService {
    private final BudgetRepository budgetRepository;
    private final UserCategoryService userCategoryService;
    private final CurrencyService currencyService;
    private final UserService userService;

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

    @Transactional
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

    public BudgetDTO getActiveBudget(BigInteger userCategoryId, Optional<Currency> currency){
        UserCategory userCategory = userCategoryService.getUserCategoryById(userCategoryId);
        Budget budget = budgetRepository.findActiveByUserCategory(userCategory).orElseThrow(
                BudgetNotFoundException::new
        );
        BudgetDTO budgetDTO = new BudgetDTO(budget);
        currency.ifPresent(value -> budgetDTO.setAmount(
                currencyService.getExchange(userService.getDefaultCurrency(), value).multiply(budget.getAmount()))
        );
        return budgetDTO;
    }
}
