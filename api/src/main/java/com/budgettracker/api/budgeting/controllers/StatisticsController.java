package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.services.StatisticsService;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/statistics")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
public class StatisticsController {
    private final StatisticsService statisticsService;

    @GetMapping("/current-month-expenses")
    @Operation(summary = "Get the sum of expenses for the current month for each category and the total sum for the month.")
    public ResponseEntity<?> getCurrentMonthExpenses() {
        return ResponseEntity.ok(statisticsService.getExpensesSumForCurrentMonth());
    }

    @GetMapping("/current-month-incomes")
    @Operation(summary = "Get the sum of incomes for the current month for each category and the total sum for the month.")
    public ResponseEntity<?> getCurrentMonthIncomes() {
        return ResponseEntity.ok(statisticsService.getIncomesSumForCurrentMonth());
    }

    @GetMapping("/current-year-expenses")
    @Operation(summary = "Get the sum of expenses for the current year and the monthly average for each category and the total sum for the year.")
    public ResponseEntity<?> getCurrentYearExpenses() {
        return ResponseEntity.ok(statisticsService.getExpenseMonthlyInfoForCurrentYear());
    }

    @GetMapping("/current-year-incomes")
    @Operation(summary = "Get the sum of incomes for the current year and the monthly average for each category and the total sum for the year.")
    public ResponseEntity<?> getCurrentYearIncomes() {
        return ResponseEntity.ok(statisticsService.getIncomeMonthlyInfoForCurrentYear());
    }
}
