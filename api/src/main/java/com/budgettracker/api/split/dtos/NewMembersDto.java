package com.budgettracker.api.split.dtos;

import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewMembersDto {
    @NotNull(message = "User ids are required")
    private List<BigInteger> userIds;
}
