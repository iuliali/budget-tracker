package com.budgettracker.api.dtos;

import com.budgettracker.api.models.UserCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigInteger;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewUserCategoryDto {
    private String name;

    public static UserCategory toUserCategory(NewUserCategoryDto newUserCategoryDto) {
        var newUserCategory = new UserCategory();
        newUserCategory.setName(newUserCategoryDto.getName());
        return newUserCategory;
    }
}
