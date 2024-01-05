package com.budgettracker.api.budgeting.unit.controllers;

import com.budgettracker.api.budgeting.controllers.BudgetController;
import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.BudgetUpdateDTO;
import com.budgettracker.api.budgeting.dtos.NewBudgetDTO;
import com.budgettracker.api.budgeting.services.BudgetService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.math.BigInteger;
import java.util.Collections;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class BudgetControllerTest {
    @Mock
    private BudgetService budgetService;

    @InjectMocks
    private BudgetController budgetController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void createBudget_ValidDto_ReturnsOkResponse() {
        NewBudgetDTO newBudgetDto = new NewBudgetDTO();
        when(budgetService.createBudget(any(NewBudgetDTO.class))).thenReturn("Budget created successfully");

        ResponseEntity<?> response = budgetController.createBudget(newBudgetDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Budget created successfully"), response.getBody());
        verify(budgetService, times(1)).createBudget(newBudgetDto);
    }

    @Test
    void getActiveBudget_ValidUserCategoryId_ReturnsOkResponse() {
        BigInteger userCategoryId = BigInteger.valueOf(123);
        BudgetDTO returnedBudget = new BudgetDTO();
        when(budgetService.getActiveBudget(eq(userCategoryId), eq(Optional.empty()))).thenReturn(returnedBudget);

        ResponseEntity<?> response = budgetController.getActiveBudget(userCategoryId, Optional.empty());

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("budget", returnedBudget), response.getBody());
        verify(budgetService, times(1)).getActiveBudget(userCategoryId, Optional.empty());
    }

    @Test
    void updateBudget_ValidUserCategoryIdAndDto_ReturnsOkResponse() {
        BigInteger userCategoryId = BigInteger.valueOf(123);
        BudgetUpdateDTO budgetUpdateDto = new BudgetUpdateDTO();
        when(budgetService.updateActiveBudget(eq(userCategoryId), any(BudgetUpdateDTO.class)))
                .thenReturn("Budget updated successfully");

        ResponseEntity<?> response = budgetController.updateBudget(userCategoryId, budgetUpdateDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Budget updated successfully"), response.getBody());
        verify(budgetService, times(1)).updateActiveBudget(userCategoryId, budgetUpdateDto);
    }

    @Test
    void deleteBudget_ValidUserCategoryId_ReturnsOkResponse() {
        BigInteger userCategoryId = BigInteger.valueOf(123);
        when(budgetService.deleteActiveBudget(eq(userCategoryId))).thenReturn("Budget deleted successfully");

        ResponseEntity<?> response = budgetController.deleteBudget(userCategoryId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Budget deleted successfully"), response.getBody());
        verify(budgetService, times(1)).deleteActiveBudget(userCategoryId);
    }
}