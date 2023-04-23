package com.budgettracker.api.dtos;


import com.budgettracker.api.enums.Currency;
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
public class IncomeDto {
    private BigInteger id;
    private String from;
    private BigDecimal amount;
    private Currency currency;

    public IncomeDto(Income income) {
        this.id = income.getId();
        this.from = income.getFrom();
        this.amount = income.getAmount();
        this.currency = income.getCurrency();
    }
}
