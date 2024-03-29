package com.budgettracker.api.auth.dtos;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.enums.Currency;
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
    private Currency defaultCurrency;

    public UserDetailsDto(User user) {
        this.username = user.getUsername();
        this.email = user.getEmail();
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
        this.defaultCurrency = user.getDefaultCurrency();
    }
}
