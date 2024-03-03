package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.BudgetService;
import com.budgettracker.api.budgeting.dtos.BudgetUpdateDTO;
import com.budgettracker.api.budgeting.dtos.NewBudgetDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;
import java.util.Optional;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/budget")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "Budget Controller", description = "Create, update and delete budgets.")
public class BudgetController {
    private final BudgetService budgetService;

    @PostMapping("/create")
    @Operation(summary = "Create a new budget for a category")
    public ResponseEntity<?> createBudget(@Valid @RequestBody NewBudgetDTO newBudgetDto) {
        return ResponseEntity.ok(Map.of("message", budgetService.createBudget(newBudgetDto)));
    }

    @GetMapping("/active/{userCategoryId}")
    @Operation(summary = "Get the active budget for a category")
    public ResponseEntity<?> getActiveBudget(@PathVariable("userCategoryId") BigInteger userCategoryId, @RequestParam(required = false) Optional<Currency> currency) {
        return ResponseEntity.ok(Map.of("budget", budgetService.getActiveBudget(userCategoryId, currency)));
    }

    @PatchMapping("/update/{userCategoryId}")
    @Operation(summary = "Update the active budget for a category")
    public ResponseEntity<?> updateBudget(@PathVariable("userCategoryId") BigInteger userCategoryId,
                                          @Valid @RequestBody BudgetUpdateDTO newBudgetDto) {
        return ResponseEntity.ok(Map.of("message", budgetService.updateActiveBudget(userCategoryId, newBudgetDto)));
    }

    @DeleteMapping("/delete/{userCategoryId}")
    @Operation(summary = "Delete the active budget for a category")
    public ResponseEntity<?> deleteBudget(@PathVariable("userCategoryId") BigInteger userCategoryId) {
        return ResponseEntity.ok(Map.of("message", budgetService.deleteActiveBudget(userCategoryId)));
    }
}
