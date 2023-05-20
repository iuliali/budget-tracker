package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.services.ExpenseService;
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

class ExpenseControllerTest {
    @Mock
    private ExpenseService expenseService;

    @InjectMocks
    private ExpenseController expenseController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    void testCreateExpense() {
        NewExpenseDto newExpenseDto = new NewExpenseDto();
        String expectedResponse = "Expense created";
        when(expenseService.createExpense(newExpenseDto)).thenReturn((Map<String, String>) ResponseEntity.ok(Map.of("message", expectedResponse)));

        ResponseEntity<?> response = expenseController.createExpense(newExpenseDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", expectedResponse), response.getBody());
        verify(expenseService, times(1)).createExpense(newExpenseDto);
    }

    @Test
    void testGetAllExpenses() {
        when(expenseService.getExpenses()).thenReturn(Collections.emptyList());

        ResponseEntity<?> response = expenseController.getAllExpenses();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("expenses", Collections.emptyList()), response.getBody());
        verify(expenseService, times(1)).getExpenses();
    }

    @Test
    void testGetAllExpensesByCategory() {
        BigInteger categoryId = BigInteger.valueOf(123);
        when(expenseService.getExpensesByCategory(categoryId)).thenReturn(Collections.emptyList());

        ResponseEntity<?> response = expenseController.getAllExpensesByCategory(categoryId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("expenses", Collections.emptyList()), response.getBody());
        verify(expenseService, times(1)).getExpensesByCategory(categoryId);
    }

    @Test
    void testUpdateExpense() {
        BigInteger expenseId = BigInteger.valueOf(456);
        NewExpenseDto newExpenseDto = new NewExpenseDto();
        when(expenseService.updateExpense(expenseId, newExpenseDto)).thenReturn("Expense updated");

        ResponseEntity<?> response = expenseController.updateExpense(expenseId, newExpenseDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", "Expense updated"), response.getBody());
        verify(expenseService, times(1)).updateExpense(expenseId, newExpenseDto);
    }

    @Test
    void testDeleteExpense() {
        BigInteger expenseId = BigInteger.valueOf(789);
        when(expenseService.deleteExpense(expenseId)).thenReturn("Expense deleted");

        ResponseEntity<?> response = expenseController.deleteExpense(expenseId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Map.of("message", "Expense deleted"), response.getBody());
        verify(expenseService, times(1)).deleteExpense(expenseId);
    }
}
