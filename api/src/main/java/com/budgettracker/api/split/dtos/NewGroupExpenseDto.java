package com.budgettracker.api.split.dtos;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.split.models.Member;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
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
    List<BigInteger> memberIds;
    @NonNull
    List<BigDecimal> amounts;

    public NewGroupExpenseDto(SettleTransactionDto settleTransactionDto) {
        this.amount = settleTransactionDto.getSettleAmount();
        this.groupId = settleTransactionDto.getGroupId();
        this.memberIds = new ArrayList<>();
        memberIds.add(settleTransactionDto.getMemberId());
        this.amounts = new ArrayList<>();
        amounts.add(settleTransactionDto.getSettleAmount());
    }
}
