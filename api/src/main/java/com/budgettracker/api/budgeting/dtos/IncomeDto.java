package com.budgettracker.api.budgeting.dtos;


import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Income;
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
public class IncomeDto {
    private BigInteger id;
    private String from;
    private BigDecimal amount;
    private Currency currency;
    private LocalDateTime registeredAt;

    public IncomeDto(Income income) {
        this.id = income.getId();
        this.from = income.getFrom();
        this.amount = income.getAmount();
        this.currency = income.getCurrency();
        this.registeredAt = income.getRegisteredAt();
    }
}
