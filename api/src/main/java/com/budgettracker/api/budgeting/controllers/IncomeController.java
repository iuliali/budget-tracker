package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.dtos.NewIncomeDto;
import com.budgettracker.api.budgeting.services.IncomeService;
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
@RequestMapping("/api/v1/incomes")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "Income Controller", description = "Create, update and delete incomes.")
public class IncomeController {
    private final IncomeService incomeService;

    @PostMapping("/create")
    @Operation(summary = "Add a new income for the logged in user")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewIncomeDto newIncomeDto) {
        return ResponseEntity.ok(Map.of("message", incomeService.createIncome(newIncomeDto)));
    }

    @GetMapping("/all")
    @Operation(summary = "Get all incomes for the user currently logged in")
    public ResponseEntity<?> getAllIncomes() {
        return ResponseEntity.ok(Map.of("incomes", incomeService.getIncomes()));
    }

    @GetMapping("/{id}/all")
    @Operation(summary = "Get all incomes for a category for the user currently logged in")
    public ResponseEntity<?> getAllIncomesByCategory(@PathVariable("id") BigInteger id) {
        return ResponseEntity.ok(Map.of("incomes", incomeService.getIncomesByCategory(id)));
    }

    @PutMapping("/update/{id}")
    @Operation(summary = "Update an income for current user")
    public ResponseEntity<?> updateIncome(@PathVariable("id") BigInteger id,
                                            @Valid @RequestBody NewIncomeDto newIncomeDto) {
        return ResponseEntity.ok(Map.of("message", incomeService.updateIncome(id, newIncomeDto)));
    }

    @DeleteMapping("/delete/{id}")
    @Operation(summary = "Delete an income for current user")
    public ResponseEntity<?> deleteIncome(@PathVariable("id") BigInteger id) {
        return ResponseEntity.ok(Map.of("message", incomeService.deleteIncome(id)));
    }
}
