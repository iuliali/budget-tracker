package com.budgettracker.api.dtos;

import com.budgettracker.api.enums.Currency;
import com.budgettracker.api.models.Expense;
import com.budgettracker.api.models.Income;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ExpenseDto {
    private BigInteger id;
    private String to;
    private BigDecimal amount;
    private Currency currency;

    public ExpenseDto(Expense expense) {
        this.id = expense.getId();
        this.to = expense.getTo();
        this.amount = expense.getAmount();
        this.currency = expense.getCurrency();
    }
}
