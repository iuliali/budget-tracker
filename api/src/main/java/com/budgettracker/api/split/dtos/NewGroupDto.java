package com.budgettracker.api.split.dtos;

import lombok.*;

import javax.validation.constraints.Pattern;
import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewGroupDto {
    @NonNull
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String name;
    private List<BigInteger> userIds;
}
