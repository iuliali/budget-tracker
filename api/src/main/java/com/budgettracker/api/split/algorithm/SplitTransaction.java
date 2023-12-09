package com.budgettracker.api.split.algorithm;

import com.budgettracker.api.split.models.Debt;
import lombok.Data;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Data
public class SplitTransaction {
    BigInteger from;
    BigInteger to;
    long capacity;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SplitTransaction that = (SplitTransaction) o;
        return capacity == that.capacity && Objects.equals(from, that.from) && Objects.equals(to, that.to);
    }

    @Override
    public int hashCode() {
        return Objects.hash(from, to, capacity);
    }

    public SplitTransaction(BigInteger from, BigInteger to, BigDecimal capacity) {
        this.from = from;
        this.to = to;
        this.capacity = capacity.multiply(BigDecimal.valueOf(1000)).toBigInteger().longValue();
    }

    public SplitTransaction(Debt debt) {
        this(debt.getDebtor().getId(),
                debt.getCreditor().getId(),
                debt.getAmount());
    }

    public SplitTransaction(BigInteger from, BigInteger to, long l) {
        this.from = from;
        this.to = to;
        this.capacity = l;
    }

    public List<BigInteger> getMemberIds() {
        List<BigInteger> ids = new ArrayList<>();
        ids.add(this.from);
        ids.add(this.to);
        return ids;
    }
}
