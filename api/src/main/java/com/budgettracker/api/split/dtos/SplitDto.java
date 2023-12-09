package com.budgettracker.api.split.dtos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SplitDto {

    public MemberDto memberFrom;
    public MemberDto memberTo;
    public BigDecimal debt;


}