package com.budgettracker.api.auth.dtos;

import com.budgettracker.api.auth.enums.Role;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.enums.Currency;
import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.validation.constraints.*;
import lombok.*;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewUserDto {
    @NotBlank(message = "Username cannot be blank")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Username must be alphanumeric")
    @Size(min = 5, max = 50, message = "Username must be between 5 and 50 characters")
    @Schema(example = "tomTest123")
    private String username;

    @NotBlank(message = "Password cannot be blank")
    @Size(min = 10, message = "Password must be at least 10 characters")
    @Schema(example = "myPa55Pa55%$$")
    private String password;

    @Email(message = "Email must be valid")
    @NotBlank(message = "Email cannot be null")
    @Schema(example = "test@email.com")
    private String email;

    @NotBlank(message = "First name cannot be blank")
    @Schema(example = "Tom")
    private String firstName;

    @NotBlank(message = "Last name cannot be blank")
    @Schema(example = "Martin")
    private String lastName;

    @NotNull(message = "Default currency cannot be blank")
    @Schema(example = "EUR")
    private Currency defaultCurrency;

    public static User toUser(NewUserDto newUserDto) {
        var newUser = new User();
        newUser.setUsername(newUserDto.getUsername());
        newUser.setEmail(newUserDto.getEmail());
        newUser.setRole(Role.USER);
        newUser.setFirstName(newUserDto.getFirstName());
        newUser.setLastName(newUserDto.getLastName());
        newUser.setDefaultCurrency(newUserDto.getDefaultCurrency());
        return newUser;
    }
}
