package com.budgettracker.api.budgeting.models;

import com.budgettracker.api.auth.models.User;
import jakarta.persistence.*;
import lombok.*;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Entity(name="userCategory")
@Table(name="user_categories")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Budget> budgets;

    @Column(nullable = false)
    @NotBlank(message = "Name field cannot be blank")
    @Pattern(regexp = "^[\\p{Alnum}\\p{Punct}\\s]*$", message = "Name field must contain only letters, numbers, punctuation and spaces")
    private String name;

    private LocalDateTime deletedAt;

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Income> userIncomes;

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Expense> userExpenses;
}
