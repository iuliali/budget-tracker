package com.budgettracker.api.split.dtos;

import com.budgettracker.api.budgeting.enums.Currency;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;

@Getter
@Setter
@NoArgsConstructor
public class SettleTransactionDto {
    private BigInteger groupId;
    private BigInteger memberId;
    private BigDecimal settleAmount;

}
