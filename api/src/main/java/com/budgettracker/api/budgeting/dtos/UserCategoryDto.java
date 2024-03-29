package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.models.UserCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigInteger;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserCategoryDto {
    private BigInteger id;
    private String name;

    public UserCategoryDto(UserCategory userCategory) {
        this.id = userCategory.getId();
        this.name = userCategory.getName();
    }
}
