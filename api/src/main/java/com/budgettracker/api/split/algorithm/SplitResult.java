package com.budgettracker.api.split.algorithm;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SplitResult {

    BigInteger from;
    BigInteger to;
    BigDecimal debt;

    public SplitResult(BigInteger debtorId, BigInteger creditorId,  long capacity) {
        this.from = debtorId;
        this.to = creditorId;
        this.debt = BigDecimal.valueOf(capacity / (1000F));
    }
}
