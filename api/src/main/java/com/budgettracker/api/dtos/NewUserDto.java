package com.budgettracker.api.dtos;

import com.budgettracker.api.enums.Role;
import com.budgettracker.api.models.User;
import io.swagger.v3.oas.annotations.media.Schema;
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
    @Schema(example = "tomTest123")
    private String username;

    @NotBlank
    @Size(min = 10)
    @Schema(example = "myPa55Pa55%$$")
    private String password;

    @NotNull
    @Schema(example = "test@email.com")
    private String email;

    @NotBlank
    @Schema(example = "Tom")
    private String firstName;

    @NotBlank
    @Schema(example = "Martin")
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
