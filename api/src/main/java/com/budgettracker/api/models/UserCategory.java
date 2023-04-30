package com.budgettracker.api.models;

import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
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

    @Column(nullable = false)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String name;

    private LocalDateTime deletedAt;

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Income> userIncomes;

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Expense> userExpenses;
}
