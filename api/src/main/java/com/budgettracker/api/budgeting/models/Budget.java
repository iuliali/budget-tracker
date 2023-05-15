package com.budgettracker.api.budgeting.models;

import com.budgettracker.api.budgeting.models.UserCategory;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Positive;
import lombok.*;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity(name="budget")
@Table(name="budgets")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Budget {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @Positive(message = "Amount must be positive")
    private BigDecimal amount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_category_id", nullable = false)
    private UserCategory userCategory;

    @Column(nullable = false)
    private LocalDateTime createdAt;

    private LocalDateTime deletedAt;


}
