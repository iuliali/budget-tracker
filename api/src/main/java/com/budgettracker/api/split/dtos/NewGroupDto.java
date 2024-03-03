package com.budgettracker.api.split.dtos;

import lombok.*;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class NewGroupDto {
    @NotBlank(message = "Name field is required")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Name must contain only letters and numbers")
    private String name;
    private List<BigInteger> userIds;
}
