package com.budgettracker.api.split.dtos;

import jakarta.validation.constraints.NotBlank;
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
    @NotNull(message = "Group id field is required")
    BigInteger groupId;

    @NotNull(message = "Amount field is required")
    private BigDecimal amount;

    @NotNull(message = "Member ids are required")
    List<BigInteger> memberIds;

    @NotNull(message = "Amounts are required")
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
