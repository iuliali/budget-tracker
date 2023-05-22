package com.budgettracker.api.budgeting.tests.unitests.services;

import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.BudgetUpdateDTO;
import com.budgettracker.api.budgeting.dtos.NewBudgetDTO;
import com.budgettracker.api.budgeting.exceptions.ActiveBudgetAlreadyExistsException;
import com.budgettracker.api.budgeting.exceptions.BudgetNotFoundException;
import com.budgettracker.api.budgeting.models.Budget;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.BudgetRepository;
import com.budgettracker.api.budgeting.services.BudgetService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.*;

class BudgetServiceTest {
    @Mock
    private BudgetRepository budgetRepository;

    @Mock
    private UserCategoryService userCategoryService;

    @InjectMocks
    private BudgetService budgetService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void createBudget_ValidDto_ReturnsSuccessMessage() {
        NewBudgetDTO newBudgetDto = new NewBudgetDTO();
        newBudgetDto.setUserCategoryId(BigInteger.ONE);
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(BigInteger.ONE)).thenReturn(userCategory);
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.empty());

        String result = budgetService.createBudget(newBudgetDto);

        assertEquals("Budget successfully created", result);
        verify(budgetRepository, times(1)).save(any(Budget.class));
    }

    @Test
    void createBudget_ActiveBudgetExists_ThrowsActiveBudgetAlreadyExistsException() {
        NewBudgetDTO newBudgetDto = new NewBudgetDTO();
        newBudgetDto.setUserCategoryId(BigInteger.ONE);
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(BigInteger.ONE)).thenReturn(userCategory);
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.of(new Budget()));

        assertThrows(ActiveBudgetAlreadyExistsException.class, () -> budgetService.createBudget(newBudgetDto));
        verify(budgetRepository, never()).save(any(Budget.class));
    }

    @Test
    void deleteActiveBudget_ValidUserCategoryId_ReturnsSuccessMessage() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        Budget budget = new Budget();
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.of(budget));

        String result = budgetService.deleteActiveBudget(userCategoryId);

        assertEquals("Budget successfully deleted", result);
        verify(budgetRepository, times(1)).deleteByUserCategoryId(userCategory);
    }

    @Test
    void deleteActiveBudget_BudgetNotFound_ThrowsBudgetNotFoundException() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.empty());

        assertThrows(BudgetNotFoundException.class, () -> budgetService.deleteActiveBudget(userCategoryId));
        verify(budgetRepository, never()).deleteByUserCategoryId(any(UserCategory.class));
    }

    @Test
    void updateActiveBudget_ValidUserCategoryId_ReturnsSuccessMessage() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        Budget budget = new Budget();
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.of(budget));
        BudgetUpdateDTO newBudgetDto = new BudgetUpdateDTO();
        newBudgetDto.setAmount(BigDecimal.valueOf(100.0));

        String result = budgetService.updateActiveBudget(userCategoryId, newBudgetDto);

        assertEquals("Budget successfully updated", result);
        assertEquals(BigDecimal.valueOf(100.0), budget.getAmount());
        verify(budgetRepository, times(1)).save(budget);
    }

    @Test
    void updateActiveBudget_BudgetNotFound_ThrowsBudgetNotFoundException() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.empty());
        BudgetUpdateDTO newBudgetDto = new BudgetUpdateDTO();
        newBudgetDto.setAmount(BigDecimal.valueOf(100.0));

        assertThrows(BudgetNotFoundException.class, () -> budgetService.updateActiveBudget(userCategoryId, newBudgetDto));
        verify(budgetRepository, never()).save(any(Budget.class));
    }

    @Test
    void getActiveBudget_ValidUserCategoryId_ReturnsBudgetDto() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        Budget budget = new Budget();
        budget.setUserCategory(userCategory);
        budget.setAmount(BigDecimal.valueOf(100.0));
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.of(budget));

        BudgetDTO result = budgetService.getActiveBudget(userCategoryId);

        assertEquals(budget.getAmount(), result.getAmount());
    }

    @Test
    void getActiveBudget_BudgetNotFound_ThrowsBudgetNotFoundException() {
        BigInteger userCategoryId = BigInteger.ONE;
        UserCategory userCategory = new UserCategory();
        when(userCategoryService.getUserCategoryById(userCategoryId)).thenReturn(userCategory);
        when(budgetRepository.findActiveByUserCategory(userCategory)).thenReturn(Optional.empty());

        assertThrows(BudgetNotFoundException.class, () -> budgetService.getActiveBudget(userCategoryId));
    }
}