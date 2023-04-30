package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.models.Budget;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class BudgetDTO {
    private BigInteger id;

    @Positive(message = "Amount must be positive")
    @NotBlank
    private BigDecimal amount;

    private BigInteger userCategoryId;

    private LocalDateTime createdAt;

    public BudgetDTO(Budget budget){
        this.id = budget.getId();
        this.amount = budget.getAmount();
        this.userCategoryId = budget.getUserCategory().getId();
        this.createdAt = budget.getCreatedAt();
    }
}
