package com.budgettracker.api.budgeting.dtos;


import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Income;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewIncomeDto {
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String from;

    @NotBlank
    private BigDecimal amount;

    @NotBlank
    private Currency currency;

    private BigInteger userCategoryId;

    public static Income toIncome(NewIncomeDto newIncomeDto) {
        var newIncome = new Income();
        newIncome.setFrom(newIncomeDto.getFrom());
        newIncome.setAmount(newIncomeDto.getAmount());
        newIncome.setCurrency(newIncomeDto.getCurrency());
        return newIncome;
    }

}
