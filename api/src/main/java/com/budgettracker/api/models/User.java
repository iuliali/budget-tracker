package com.budgettracker.api.models;

import com.budgettracker.api.enums.Role;
import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
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
    @Size(min = 5, max = 15)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String username;
    @Column(nullable = false)
    private String password;

    @NotBlank
    private String firstName;

    @NotBlank
    private String lastName;

    @NonNull
    private Role role;

    @Email
    @Column(unique = true, nullable = false)
    private String email;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<UserCategory> userCategories;

    private boolean locked = false;

    private boolean enabled = false;


}
