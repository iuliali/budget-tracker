package com.budgettracker.api.split.algorithm;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class SplitTransaction {
    int from;
    int to;
    long capacity;

}
