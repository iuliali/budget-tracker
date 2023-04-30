package com.budgettracker.api.models;

import com.budgettracker.api.enums.Currency;
import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;


@Getter
@Setter
@Entity(name = "income")
@Table(name = "incomes")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Income {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @ManyToOne
    @JoinColumn(name = "user_category_id", referencedColumnName = "id", nullable = false)
    private UserCategory userCategory;

    @Column(name = "sender", nullable = false)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String from;

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
