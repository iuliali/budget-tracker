package com.budgettracker.api.budgeting.dtos;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Expense;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class NewExpenseDto {
    @NotBlank(message = "To field is required")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "To must contain only letters and numbers")
    private String to;

    @NotNull(message = "Amount field is required")
    @Positive(message = "Amount must be positive")
    private BigDecimal amount;

    @NotNull(message = "Currency field is required")
    private Currency currency;

    private BigInteger userCategoryId;

    public static Expense toExpense(NewExpenseDto newExpenseDto) {
        var newExpense = new Expense();
        newExpense.setTo(newExpenseDto.getTo());
        newExpense.setAmount(newExpenseDto.getAmount());
        newExpense.setCurrency(newExpenseDto.getCurrency());
        newExpense.setRegisteredAt(LocalDateTime.now());
        return newExpense;
    }
}
