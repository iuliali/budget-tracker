package com.budgettracker.api.split.dtos;

import lombok.*;

import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewMembersDto {
    @NonNull
    private List<BigInteger> userIds;
}
