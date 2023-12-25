package com.budgettracker.api.budgeting.dtos;


import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Income;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewIncomeDto {
    @NotBlank(message = "From field is required")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "From must contain only letters and numbers")
    private String from;

    @NotNull(message = "Amount field is required")
    @Positive(message = "Amount must be positive")
    private BigDecimal amount;

    @NotNull(message = "Currency field is required")
    private Currency currency;

    private BigInteger userCategoryId;

    public static Income toIncome(NewIncomeDto newIncomeDto) {
        var newIncome = new Income();
        newIncome.setFrom(newIncomeDto.getFrom());
        newIncome.setAmount(newIncomeDto.getAmount());
        newIncome.setCurrency(newIncomeDto.getCurrency());
        newIncome.setRegisteredAt(LocalDateTime.now());
        return newIncome;
    }

}
