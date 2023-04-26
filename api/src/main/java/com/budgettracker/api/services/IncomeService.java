package com.budgettracker.api.services;

import com.budgettracker.api.auth_facade.AuthenticationFacade;
import com.budgettracker.api.dtos.IncomeDto;
import com.budgettracker.api.dtos.NewIncomeDto;
import com.budgettracker.api.exceptions.IncomeNotFoundException;
import com.budgettracker.api.exceptions.NoUserCategoryForIncomeException;
import com.budgettracker.api.exceptions.UserHasNoIncomesException;
import com.budgettracker.api.models.Income;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.IncomeRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
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
        Income income = new Income();
        income.setFrom(incomeDto.getFrom());
        income.setAmount(incomeDto.getAmount());
        income.setCurrency(incomeDto.getCurrency());
        income.setRegisteredAt(LocalDateTime.now());
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(incomeDto.getUserCategoryId())
                .orElseThrow(
                        NoUserCategoryForIncomeException::new
                );
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
