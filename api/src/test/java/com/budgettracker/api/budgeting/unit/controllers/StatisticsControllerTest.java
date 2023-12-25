package com.budgettracker.api.budgeting.unit.controllers;

import com.budgettracker.api.budgeting.controllers.StatisticsController;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.StatisticsService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

class StatisticsControllerTest {
    @Mock
    private StatisticsService statisticsService;

    private StatisticsController statisticsController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        statisticsController = new StatisticsController(statisticsService);
    }

    @Test
    void getExpensesSumForMonth_ShouldReturnExpenseSumForMonth() {
        String month = "2023-01";
        Optional<Currency> currency = Optional.of(Currency.RON);
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getExpensesSumForMonth(month, currency)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getExpensesSumForMonth(month, currency);

        verify(statisticsService, times(1)).getExpensesSumForMonth(month, currency);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getIncomesSumForMonth_ShouldReturnIncomeSumForMonth() {
        String month = "2023-01";
        Optional<Currency> currency = Optional.of(Currency.RON);
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getIncomesSumForMonth(month, currency)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getIncomesSumForMonth(month, currency);

        verify(statisticsService, times(1)).getIncomesSumForMonth(month, currency);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getCurrentYearExpenses_ShouldReturnExpenseMonthlyInfoForCurrentYear() {
        String year = "2023";
        Optional<Currency> currency = Optional.of(Currency.RON);
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getExpenseMonthlyInfoForYear(year, currency)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getYearExpenses(year, currency);

        verify(statisticsService, times(1)).getExpenseMonthlyInfoForYear(year, currency);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getCurrentYearIncomes_ShouldReturnIncomeMonthlyInfoForCurrentYear() {
        String year = "2023";
        Optional<Currency> currency = Optional.of(Currency.RON);
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getIncomeMonthlyInfoForYear(year, currency)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getYearIncomes(year, currency);

        verify(statisticsService, times(1)).getIncomeMonthlyInfoForYear(year, currency);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }
}