package com.budgettracker.api.budget;

import com.budgettracker.api.budget.dtos.NewBudgetDTO;
import com.budgettracker.api.dtos.NewUserCategoryDto;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/budget")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
public class BudgetController {
    private final BudgetService budgetService;

    @PostMapping("/create")
    @Operation(summary = "Create a new budget for a category")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewBudgetDTO newBudgetDto) {
        return ResponseEntity.ok(Map.of("message", budgetService.createBudget(newBudgetDto)));
    }

    @GetMapping("/active/{userCategoryId}")
    @Operation(summary = "Get the active budget for a category")
    public ResponseEntity<?> getActiveBudget(@PathVariable("userCategoryId") BigInteger userCategoryId) {
        return ResponseEntity.ok(Map.of("budget", budgetService.getActiveBudget(userCategoryId)));
    }

    @PutMapping("/update/{userCategoryId}")
    @Operation(summary = "Update the active budget for a category")
    public ResponseEntity<?> updateBudget(@PathVariable("userCategoryId") BigInteger userCategoryId,
                                          @Valid @RequestBody NewBudgetDTO newBudgetDto) {
        return ResponseEntity.ok(Map.of("message", budgetService.updateActiveBudget(userCategoryId, newBudgetDto)));
    }

    @DeleteMapping("/delete/{userCategoryId}")
    @Operation(summary = "Delete the active budget for a category")
    public ResponseEntity<?> deleteBudget(@PathVariable("userCategoryId") BigInteger userCategoryId) {
        return ResponseEntity.ok(Map.of("message", budgetService.deleteActiveBudget(userCategoryId)));
    }
}
