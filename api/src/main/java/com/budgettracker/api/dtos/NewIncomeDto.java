package com.budgettracker.api.dtos;


import com.budgettracker.api.enums.Currency;
import com.budgettracker.api.models.Income;
import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;

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

    public static Income toIncome(NewIncomeDto newIncomeDto) {
        var newIncome = new Income();
        newIncome.setFrom(newIncomeDto.getFrom());
        newIncome.setAmount(newIncomeDto.getAmount());
        newIncome.setCurrency(newIncomeDto.getCurrency());
        return newIncome;
    }

}
