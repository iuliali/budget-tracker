package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.models.UserCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewUserCategoryDto {
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String name;

    public static UserCategory toUserCategory(NewUserCategoryDto newUserCategoryDto) {
        var newUserCategory = new UserCategory();
        newUserCategory.setName(newUserCategoryDto.getName());
        return newUserCategory;
    }
}
