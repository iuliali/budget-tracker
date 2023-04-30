package com.budgettracker.api.dtos;

import com.budgettracker.api.models.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class UserDetailsDto {
    private String username;
    private String firstName;
    private String lastName;
    private String email;

    public UserDetailsDto(User user) {
        this.username = user.getUsername();
        this.email = user.getEmail();
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
    }
}
