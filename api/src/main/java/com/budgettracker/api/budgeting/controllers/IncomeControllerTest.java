package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.dtos.NewIncomeDto;
import com.budgettracker.api.budgeting.services.IncomeService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.math.BigInteger;
import java.util.Collections;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

class IncomeControllerTest {
    @Mock
    private IncomeService incomeService;

    @InjectMocks
    private IncomeController incomeController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    void testCreateIncome() {
        NewIncomeDto newIncomeDto = new NewIncomeDto();
        when(incomeService.createIncome(newIncomeDto)).thenReturn("Income created");

        ResponseEntity<?> response = incomeController.createIncome(newIncomeDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", "Income created"), response.getBody());
        verify(incomeService, times(1)).createIncome(newIncomeDto);
    }

    @Test
    void testGetAllIncomes() {
        when(incomeService.getIncomes()).thenReturn(Collections.emptyList());

        ResponseEntity<?> response = incomeController.getAllIncomes();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("incomes", Collections.emptyList()), response.getBody());
        verify(incomeService, times(1)).getIncomes();
    }

    @Test
    void testGetAllIncomesByCategory() {
        BigInteger categoryId = BigInteger.valueOf(123);
        when(incomeService.getIncomesByCategory(categoryId)).thenReturn(Collections.emptyList());

        ResponseEntity<?> response = incomeController.getAllIncomesByCategory(categoryId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("incomes", Collections.emptyList()), response.getBody());
        verify(incomeService, times(1)).getIncomesByCategory(categoryId);
    }

    @Test
    void testUpdateIncome() {
        BigInteger incomeId = BigInteger.valueOf(456);
        NewIncomeDto newIncomeDto = new NewIncomeDto();
        when(incomeService.updateIncome(incomeId, newIncomeDto)).thenReturn("Income updated");

        ResponseEntity<?> response = incomeController.updateIncome(incomeId, newIncomeDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", "Income updated"), response.getBody());
        verify(incomeService, times(1)).updateIncome(incomeId, newIncomeDto);
    }

    @Test
    void testDeleteIncome() {
        BigInteger incomeId = BigInteger.valueOf(789);
        when(incomeService.deleteIncome(incomeId)).thenReturn("Income deleted");

        ResponseEntity<?> response = incomeController.deleteIncome(incomeId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", "Income deleted"), response.getBody());
        verify(incomeService, times(1)).deleteIncome(incomeId);
    }
}