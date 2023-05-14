package com.budgettracker.api.split.dtos;

import com.budgettracker.api.budgeting.enums.Currency;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewGroupExpenseDto {
    @NonNull
    BigInteger groupId;

    @NonNull
    private BigDecimal amount;
    @NonNull
    private Currency currency;

    @NotNull
    private BigInteger userCategoryId;
    @NonNull
    List<BigInteger> memberIds;
    @NonNull
    List<BigDecimal> amounts;
}
