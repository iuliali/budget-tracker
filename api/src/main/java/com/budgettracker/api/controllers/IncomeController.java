package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.NewIncomeDto;
import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.services.IncomeService;
import io.swagger.v3.oas.annotations.Operation;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/v1/incomes")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
public class IncomeController {
    private final IncomeService incomeService;

    @PostMapping("/create")
    @Operation(summary = "Add a new income for the logged in user")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewIncomeDto newIncomeDto) {
        return ResponseEntity.ok(Map.of("message", incomeService.createIncome(newIncomeDto)));
    }
}
