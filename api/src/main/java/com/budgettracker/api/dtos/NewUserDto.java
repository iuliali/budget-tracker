package com.budgettracker.api.dtos;

import com.budgettracker.api.enums.Role;
import com.budgettracker.api.models.User;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class NewUserDto {
    @NotBlank
    @Size(min = 5, max = 50)
    private String username;

    @NotBlank
    @Size(min = 10)
    private String password;

    @NotNull
    private String email;

    @NotBlank
    private String firstName;

    @NotBlank
    private String lastName;

    public static User toUser(NewUserDto newUserDto) {
        var newUser = new User();
        newUser.setUsername(newUserDto.getUsername());
        newUser.setEmail(newUserDto.getEmail());
        newUser.setRole(Role.USER);
        newUser.setFirstName(newUserDto.getFirstName());
        newUser.setLastName(newUserDto.getLastName());
        return newUser;
    }
}
