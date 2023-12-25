package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.models.UserCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewUserCategoryDto {
    @NotBlank(message = "Name field is required")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Name must contain only letters and numbers")
    private String name;

    public static UserCategory toUserCategory(NewUserCategoryDto newUserCategoryDto) {
        var newUserCategory = new UserCategory();
        newUserCategory.setName(newUserCategoryDto.getName());
        return newUserCategory;
    }
}
