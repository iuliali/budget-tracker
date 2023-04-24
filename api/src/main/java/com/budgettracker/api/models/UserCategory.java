package com.budgettracker.api.models;

import com.budgettracker.api.budget.Budget;
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

    @OneToMany(mappedBy = "userCategory", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Budget> budgets;

    @Column(nullable = false)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String name;

    private LocalDateTime deletedAt;
}
