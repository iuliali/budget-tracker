package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.services.StatisticsService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/statistics")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "Statistics Controller", description = "Get statistics about expenses and incomes.")
public class StatisticsController {
    private final StatisticsService statisticsService;

    @GetMapping("/month-expenses/{month}/{currency}")
    @Operation(summary = "Get the sum of expenses for the month (yyyy-mm) for each category and the total sum for the month.")
    public ResponseEntity<?> getExpensesSumForMonth(@PathVariable String month, @PathVariable String currency) {
        return ResponseEntity.ok(statisticsService.getExpensesSumForMonth(month, currency));
    }

    @GetMapping("/month-incomes/{month}/{currency}")
    @Operation(summary = "Get the sum of incomes for the month (yyyy-mm) for each category and the total sum for the month.")
    public ResponseEntity<?> getIncomesSumForMonth(@PathVariable String month, @PathVariable String currency) {
        return ResponseEntity.ok(statisticsService.getIncomesSumForMonth(month, currency));
    }

    @GetMapping("/year-expenses/{year}/{currency}")
    @Operation(summary = "Get the sum of expenses for the year (yyyy) and the monthly average for each category and the total sum for the year.")
    public ResponseEntity<?> getYearExpenses(@PathVariable String year, @PathVariable String currency) {
        return ResponseEntity.ok(statisticsService.getExpenseMonthlyInfoForYear(year, currency));
    }

    @GetMapping("/year-incomes/{year}/{currency}")
    @Operation(summary = "Get the sum of incomes for the year (yyyy) and the monthly average for each category and the total sum for the year.")
    public ResponseEntity<?> getYearIncomes(@PathVariable String year, @PathVariable String currency) {
        return ResponseEntity.ok(statisticsService.getIncomeMonthlyInfoForYear(year, currency));
    }
}
