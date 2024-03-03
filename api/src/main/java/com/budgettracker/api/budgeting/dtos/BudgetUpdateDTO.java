package com.budgettracker.api.budgeting.dtos;

import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BudgetUpdateDTO {
    @Positive(message = "Amount must be positive", groups = {NewBudgetDTO.class})
    private BigDecimal amount;
}
