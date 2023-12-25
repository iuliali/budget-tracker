package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.StatisticsService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/v1/statistics")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "Statistics Controller", description = "Get statistics about expenses and incomes.")
public class StatisticsController {
    private final StatisticsService statisticsService;

    @GetMapping("/month-expenses/{month}")
    @Operation(summary = "Get the sum of expenses for the month (yyyy-mm) for each category and the total sum for the month.")
    public ResponseEntity<?> getExpensesSumForMonth(@PathVariable String month) {
        return ResponseEntity.ok(statisticsService.getExpensesSumForMonth(month));
    }

    @GetMapping("/month-incomes/{month}")
    @Operation(summary = "Get the sum of incomes for the month (yyyy-mm) for each category and the total sum for the month.")
    public ResponseEntity<?> getIncomesSumForMonth(@PathVariable String month) {
        return ResponseEntity.ok(statisticsService.getIncomesSumForMonth(month));
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


    @GetMapping("/week-expenses-by-month/{month}/{currency}")
    @Operation(summary = "Get the sum of expenses for every week in a month (yyyy-mm) using a currency.")
    public ResponseEntity<?>getExpensesSumForMonthByWeek(@PathVariable String month, @RequestParam(required = false) Optional<Currency> currency){
        return ResponseEntity.ok(statisticsService.getExpensesSumForMonthByWeek(month, currency));
    }
}
