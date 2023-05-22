package com.budgettracker.api.budgeting.tests.unitests.controllers;

import com.budgettracker.api.budgeting.controllers.StatisticsController;
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
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getExpensesSumForMonth(month)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getExpensesSumForMonth(month);

        verify(statisticsService, times(1)).getExpensesSumForMonth(month);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getIncomesSumForMonth_ShouldReturnIncomeSumForMonth() {
        String month = "2023-01";
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getIncomesSumForMonth(month)).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getIncomesSumForMonth(month);

        verify(statisticsService, times(1)).getIncomesSumForMonth(month);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getCurrentYearExpenses_ShouldReturnExpenseMonthlyInfoForCurrentYear() {
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getExpenseMonthlyInfoForCurrentYear()).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getCurrentYearExpenses();

        verify(statisticsService, times(1)).getExpenseMonthlyInfoForCurrentYear();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }

    @Test
    void getCurrentYearIncomes_ShouldReturnIncomeMonthlyInfoForCurrentYear() {
        Map<String, Map<String, BigDecimal>> expectedResponse = new HashMap<>();

        when(statisticsService.getIncomeMonthlyInfoForCurrentYear()).thenReturn(expectedResponse);

        ResponseEntity<?> response = statisticsController.getCurrentYearIncomes();

        verify(statisticsService, times(1)).getIncomeMonthlyInfoForCurrentYear();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(expectedResponse, response.getBody());
    }
}