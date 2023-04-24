package com.budgettracker.api.services;

import com.budgettracker.api.auth_facade.AuthenticationFacade;
import com.budgettracker.api.dtos.IncomeDto;
import com.budgettracker.api.dtos.NewIncomeDto;
import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.dtos.UserCategoryDto;
import com.budgettracker.api.models.Income;
import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import com.budgettracker.api.repositories.IncomeRepository;
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

    public IncomeDto getIncomeById(BigInteger id) {
        return new IncomeDto(incomeRepository.findById(id).orElseThrow(
                // TODO: Create custom exception
                () -> new RuntimeException("Income not found")
        ));
    }


    @Transactional
    public String createIncome(NewIncomeDto incomeDto){
        Income income = new Income();
        income.setFrom(incomeDto.getFrom());
        income.setAmount(incomeDto.getAmount());
        income.setCurrency(incomeDto.getCurrency());
        UserCategory userCategory = userCategoryService.getUserCategoryIfExists(incomeDto.getUserCategoryId())
                .orElseThrow(
                        () -> new RuntimeException("UserCategory for income doesn't exist")
                );
        income.setUserCategory(userCategory);
        incomeRepository.save(income);
        return "Income has been added successfully";
    }

    /*public List<IncomeDto> getIncomes(){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        return incomeRepository.stream()
                .map(IncomeDto::new)
                .toList();

    }*/
}
