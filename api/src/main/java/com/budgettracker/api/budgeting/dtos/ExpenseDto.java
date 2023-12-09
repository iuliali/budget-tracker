package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Expense;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ExpenseDto {
    private BigInteger id;
    private BigInteger userCategoryId;
    private String to;
    private BigDecimal amount;
    private Currency currency;
    private LocalDateTime registeredAt;

    public ExpenseDto(Expense expense) {
        this.id = expense.getId();
        this.userCategoryId = expense.getUserCategory().getId();
        this.to = expense.getTo();
        this.amount = expense.getAmount();
        this.currency = expense.getCurrency();
        this.registeredAt = expense.getRegisteredAt();
    }
}
