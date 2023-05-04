package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.NewExpenseDto;
import com.budgettracker.api.services.ExpenseService;
import io.swagger.v3.oas.annotations.Operation;
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
public class ExpenseController {
    private final ExpenseService expenseService;

    @PostMapping("/create")
    @Operation(summary = "Add a new expense for the logged in user")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewExpenseDto newExpenseDto) {
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
