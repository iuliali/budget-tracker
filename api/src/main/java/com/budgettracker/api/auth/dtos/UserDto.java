package com.budgettracker.api.auth.dtos;

import com.budgettracker.api.auth.enums.Role;
import com.budgettracker.api.auth.models.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigInteger;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UserDto {
    private BigInteger id;
    private String username;
    private Role role;
    private String firstName;
    private String lastName;
    private String email;


    public UserDto(User user) {
        this.id = user.getId();
        this.username = user.getUsername();
        this.email = user.getEmail();
        this.role = user.getRole();
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
    }
}
