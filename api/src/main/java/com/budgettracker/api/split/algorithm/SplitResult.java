package com.budgettracker.api.split.algorithm;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SplitResult {

    BigInteger from;
    BigInteger to;
    BigDecimal debt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SplitResult that = (SplitResult) o;
        return Objects.equals(from, that.from) && Objects.equals(to, that.to) && Objects.equals(debt, that.debt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(from, to, debt);
    }

    public SplitResult(BigInteger debtorId, BigInteger creditorId, long capacity) {
        this.from = debtorId;
        this.to = creditorId;
        this.debt = BigDecimal.valueOf(capacity / (1000F));
    }
}
