package com.budgettracker.api.split.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class GroupBalanceDto {
    private BigInteger id;
    private String name;
    private BigDecimal balance;
    private List<MemberDto> members;
}
