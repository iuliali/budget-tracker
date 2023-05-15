package com.budgettracker.api.budgeting.dtos;

import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NewBudgetDTO {

    @Positive(message = "Amount must be positive")
    private BigDecimal amount;

    private BigInteger userCategoryId;
}
