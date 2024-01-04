package com.budgettracker.api.budgeting.models;

import com.budgettracker.api.budgeting.enums.Currency;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.*;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
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
    @NotBlank(message = "To field cannot be blank")
    @Pattern(regexp = "^[\\p{Alnum}\\p{Punct}\\s]*$", message = "To field must contain only letters, numbers, punctuation and spaces")
    private String to;

    @Column(nullable = false)
    @NotNull(message = "Amount field cannot be blank")
    @Positive(message = "Amount field must be positive")
    private BigDecimal amount;

    @Column(nullable = false)
    @NotNull(message = "Currency field cannot be blank")
    private Currency currency;

    @Column(nullable = false)
    @NotNull(message = "Date field cannot be blank")
    private LocalDateTime registeredAt;
}
