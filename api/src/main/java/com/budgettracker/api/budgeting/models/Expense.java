package com.budgettracker.api.budgeting.models;

import com.budgettracker.api.budgeting.enums.Currency;
import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity(name = "expense")
@Table(name = "expenses")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Expense {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @ManyToOne
    @JoinColumn(name = "user_category_id", referencedColumnName = "id", nullable = false)
    private UserCategory userCategory;

    @Column(name = "receive", nullable = false)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String to;

    @Column(nullable = false)
    @NotBlank
    private BigDecimal amount;

    @Column(nullable = false)
    @NotBlank
    private Currency currency;

    @Column(nullable = false)
    @NotBlank
    private LocalDateTime registeredAt;
}