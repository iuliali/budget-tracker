package com.budgettracker.api.auth.models;

import com.budgettracker.api.auth.enums.Role;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.UserCategory;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@Entity(name="user")
@Table(name="users", uniqueConstraints={
        @UniqueConstraint(columnNames={"username"}),
        @UniqueConstraint(columnNames={"email"})
})
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @Column(nullable = false, unique = true)
    @Size(min = 5, max = 50, message = "Username must be between 5 and 50 characters")
    @NotBlank(message = "Username cannot be blank")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Username must be alphanumeric")
    private String username;
    @Column(nullable = false)
    @NotBlank(message = "Password cannot be blank")
    @Size(min = 10, message = "Password must be at least 10 characters")
    private String password;

    @NotBlank(message = "First name cannot be blank")
    private String firstName;

    @NotBlank(message = "Last name cannot be blank")
    private String lastName;

    @Column(nullable = false)
    @NotNull(message = "Default currency cannot be blank")
    private Currency defaultCurrency;

    @NotNull(message = "Role cannot be null")
    private Role role;

    @Email
    @Column(unique = true, nullable = false)
    @NotBlank(message = "Email cannot be blank")
    private String email;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<UserCategory> userCategories;

    private boolean locked = false;

    private boolean enabled = false;


}
