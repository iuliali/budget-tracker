package com.budgettracker.api.split.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class GroupBalanceDto {
    private String groupName;
    private BigDecimal balance;
}
