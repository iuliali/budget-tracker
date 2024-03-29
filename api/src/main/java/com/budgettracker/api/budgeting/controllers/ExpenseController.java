package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.services.ExpenseService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/expenses")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "Expense Controller", description = "Create, update and delete expenses.")
public class ExpenseController {
    private final ExpenseService expenseService;

    @PostMapping("/create")
    @Operation(summary = "Add a new expense for the logged in user")
    public ResponseEntity<?> createExpense(@Valid @RequestBody NewExpenseDto newExpenseDto) {
        return ResponseEntity.ok(expenseService.createExpense(newExpenseDto));
    }

    @GetMapping("/all")
    @Operation(summary = "Get all expenses for the user currently logged in")
    public ResponseEntity<?> getAllExpenses() {
        return ResponseEntity.ok(Map.of("expenses", expenseService.getExpenses()));
    }

    @GetMapping("/{id}/all")
    @Operation(summary = "Get all expenses for a category for the user currently logged in")
    public ResponseEntity<?> getAllExpensesByCategory(@PathVariable("id") BigInteger id) {
        return ResponseEntity.ok(Map.of("expenses", expenseService.getExpensesByCategory(id)));
    }

    @GetMapping("/sum")
    @Operation(summary = "Get the sum of expenses for the user currently logged in")
    public ResponseEntity<?> totalExpenses(){
        return ResponseEntity.ok(expenseService.getSumOfExpenses());
    }

    @PutMapping("/update/{id}")
    @Operation(summary = "Update an expense for current user")
    public ResponseEntity<?> updateExpense(@PathVariable("id") BigInteger id,
                                          @Valid @RequestBody NewExpenseDto newExpenseDto) {
        return ResponseEntity.ok(Map.of("message", expenseService.updateExpense(id, newExpenseDto)));
    }

    @DeleteMapping("/delete/{id}")
    @Operation(summary = "Delete an expense for current user")
    public ResponseEntity<?> deleteExpense(@PathVariable("id") BigInteger id) {
        return ResponseEntity.ok(Map.of("message", expenseService.deleteExpense(id)));
    }
}
