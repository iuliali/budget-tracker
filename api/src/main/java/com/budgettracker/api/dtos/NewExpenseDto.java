package com.budgettracker.api.dtos;

import com.budgettracker.api.enums.Currency;
import com.budgettracker.api.models.Expense;
import com.budgettracker.api.models.Income;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class NewExpenseDto {
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String to;

    @NotBlank
    private BigDecimal amount;

    @NotBlank
    private Currency currency;

    @NotBlank
    private LocalDateTime registeredAt;

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