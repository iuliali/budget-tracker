package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.IncomeDto;
import com.budgettracker.api.budgeting.dtos.NewIncomeDto;
import com.budgettracker.api.budgeting.exceptions.IncomeNotFoundException;
import com.budgettracker.api.budgeting.exceptions.NoUserCategoryForIncomeException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoIncomesException;
import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.List;

@Service
@RequiredArgsConstructor
public class IncomeService {
    private final IncomeRepository incomeRepository;
    private final UserCategoryService userCategoryService;
    private final UserService userService;
    private final AuthenticationFacade authenticationFacade;

    public Income getIncomeById(BigInteger id) {
        return incomeRepository.findById(id).orElseThrow(
                IncomeNotFoundException::new
        );
    }


    public String createIncome(NewIncomeDto incomeDto){
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(incomeDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForIncomeException::new
                );
        Income income = NewIncomeDto.toIncome(incomeDto);
        income.setUserCategory(userCategory);
        incomeRepository.save(income);
        return "Income has been added successfully";
    }

    public List<IncomeDto> getIncomes(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        return incomeRepository.findIncomesByUser(user)
                .orElseThrow(
                        UserHasNoIncomesException :: new
                )
                .stream()
                .map(IncomeDto::new)
                .toList();
    }

    public List<IncomeDto> getIncomesByCategory(BigInteger id){
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(id)
                .orElseThrow(
                        NoUserCategoryForIncomeException::new
                );
        return incomeRepository.findIncomesByCategoryForUser(userCategory.getUser(), id)
                .orElseThrow(
                        UserHasNoIncomesException :: new
                )
                .stream()
                .map(IncomeDto::new)
                .toList();
    }

    public String updateIncome(BigInteger id, NewIncomeDto incomeDto){
        var income = incomeRepository.findById(id).orElseThrow(
                IncomeNotFoundException::new
        );
        income.setFrom(incomeDto.getFrom());
        income.setAmount(incomeDto.getAmount());
        income.setCurrency(incomeDto.getCurrency());
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(incomeDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForIncomeException::new
                );
        income.setUserCategory(userCategory);
        incomeRepository.save(income);
        return "Income has been updated successfully";
    }

    @Transactional
    public String deleteIncome(BigInteger id){
        var income = incomeRepository.findById(id).orElseThrow(
                IncomeNotFoundException::new
        );
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(income.getUserCategory().getId())
                .orElseThrow(
                        NoUserCategoryForIncomeException::new
                );
        incomeRepository.deleteById(id);
        return "Income has been deleted successfully";
    }

}
