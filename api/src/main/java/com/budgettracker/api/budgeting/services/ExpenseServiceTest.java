package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.ExpenseDto;
import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.ExpenseNotFoundException;
import com.budgettracker.api.budgeting.exceptions.NoUserCategoryForExpenseException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoExpensesException;
import com.budgettracker.api.budgeting.models.Budget;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.authentication.TestingAuthenticationToken;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class ExpenseServiceTest {

    private ExpenseService expenseService;

    @Mock
    private ExpenseRepository expenseRepository;

    @Mock
    private UserCategoryService userCategoryService;

    @Mock
    private UserService userService;

    @Mock
    private BudgetService budgetService;

    @Mock
    private AuthenticationFacade authenticationFacade;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
        expenseService = new ExpenseService(expenseRepository, userCategoryService, userService, budgetService, authenticationFacade);
    }

    @Test
    void testGetExpenseById() {
        BigInteger expenseId = BigInteger.valueOf(1);
        Expense expense = new Expense();
        expense.setId(expenseId);

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.of(expense));

        ExpenseDto expenseDto = expenseService.getExpenseById(expenseId);

        assertEquals(expenseId, expenseDto.getId());
        verify(expenseRepository, times(1)).findById(expenseId);
    }

    @Test
    void testGetExpenseById_ExpenseNotFound() {
        BigInteger expenseId = BigInteger.valueOf(1);

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.empty());

        assertThrows(ExpenseNotFoundException.class, () -> expenseService.getExpenseById(expenseId));
        verify(expenseRepository, times(1)).findById(expenseId);
    }


    @Test
    void testCheckIfNewExpenseIsOverBudget() {
        BigDecimal newExpenseAmount = BigDecimal.valueOf(100);
        BigInteger userCategoryId = BigInteger.valueOf(1);

        BigDecimal currentAmount = BigDecimal.valueOf(500);
        BigDecimal sumOfExpenses = BigDecimal.valueOf(400);

        // Mock the behavior of expenseRepository
        ExpenseRepository expenseRepository = mock(ExpenseRepository.class);
        when(expenseRepository.expensesSumByUserCategory(userCategoryId)).thenReturn(Optional.of(sumOfExpenses));

        ExpenseService expenseService = new ExpenseService(expenseRepository, userCategoryService, userService, budgetService, authenticationFacade);

        boolean result = expenseService.checkIfNewExpenseIsOverBudget(newExpenseAmount, userCategoryId);

        assertTrue(result);
        verify(expenseRepository, times(1)).expensesSumByUserCategory(userCategoryId);
    }


    @Test
    void testCreateExpense() {
        // Prepare the test data
        NewExpenseDto newExpenseDto = new NewExpenseDto();
        newExpenseDto.setTo("Expense To");
        newExpenseDto.setAmount(BigDecimal.valueOf(100));
        newExpenseDto.setCurrency(Currency.valueOf("USD"));
        newExpenseDto.setUserCategoryId(BigInteger.valueOf(1));

        // Mock the behavior of the expenseRepository
        Expense savedExpense = new Expense();
        savedExpense.setId(BigInteger.valueOf(1));
        savedExpense.setTo(newExpenseDto.getTo());
        savedExpense.setAmount(newExpenseDto.getAmount());
        savedExpense.setCurrency(newExpenseDto.getCurrency());
        savedExpense.setRegisteredAt(LocalDateTime.now());
        UserCategory userCategory = new UserCategory();
        userCategory.setId(newExpenseDto.getUserCategoryId());
        savedExpense.setUserCategory(userCategory);
        when(expenseRepository.save(any(Expense.class))).thenReturn(savedExpense);

        // Create an instance of ExpenseService using the existing repositories
        ExpenseService expenseService = new ExpenseService(expenseRepository, userCategoryService, userService, budgetService, authenticationFacade);

        // Perform the test
        Map<String, String> result = expenseService.createExpense(newExpenseDto);

        // Assert the result
        assertNotNull(result);
        assertEquals("Expense has been added successfully", result.get("message"));
        assertEquals("No warning", result.get("warning"));

        // Verify the method calls
        verify(expenseRepository, times(1)).save(any(Expense.class));
    }


    @Test
    void testCreateExpense_ExpenseOverBudget() {
        // Mock the dependencies
        NewExpenseDto expenseDto = new NewExpenseDto();
        expenseDto.setAmount(BigDecimal.valueOf(100));
        expenseDto.setUserCategoryId(BigInteger.valueOf(1));

        BudgetDTO budgetDTO = new BudgetDTO();
        budgetDTO.setAmount(BigDecimal.valueOf(50));

        when(budgetService.getActiveBudget(any(BigInteger.class))).thenReturn(budgetDTO);
        when(expenseRepository.expensesSumByUserCategory(any(BigInteger.class))).thenReturn(Optional.of(BigDecimal.valueOf(60)));

        // Execute the method
        Map<String, String> result = expenseService.createExpense(expenseDto);

        // Verify the result
        assertEquals("Expense has been added successfully", result.get("message"));
        assertEquals("You are over budget for this category", result.get("warning"));

        // Verify the method invocations
        verify(budgetService, times(1)).getActiveBudget(any(BigInteger.class));
        verify(expenseRepository, times(1)).expensesSumByUserCategory(any(BigInteger.class));
        verify(expenseRepository, times(1)).save(any(Expense.class));
    }



    @Test
    void testGetExpenses() {
        User user = new User();
        user.setUsername("testUser");

        when(authenticationFacade.getAuthentication()).thenReturn(new TestingAuthenticationToken(user, null));
        when(userService.getUserByUsername(user.getUsername())).thenReturn(user);
        when(expenseRepository.findExpensesByUser(user)).thenReturn(Optional.of(new ArrayList<>()));

        List<ExpenseDto> expenseDtos = expenseService.getExpenses();

        assertNotNull(expenseDtos);
        assertEquals(0, expenseDtos.size());
        verify(userService, times(1)).getUserByUsername(user.getUsername());
        verify(expenseRepository, times(1)).findExpensesByUser(user);
    }

    @Test
    void testGetExpensesByCategory() {
        BigInteger categoryId = BigInteger.valueOf(1);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(categoryId);
        User user = new User();
        user.setUsername("testUser");

        when(userCategoryService.getUserCategoryIfExists(categoryId)).thenReturn(Optional.of(userCategory));
        when(authenticationFacade.getAuthentication()).thenReturn(new TestingAuthenticationToken(user, null));
        when(userService.getUserByUsername(user.getUsername())).thenReturn(user);
        when(expenseRepository.findExpensesByCategoryForUser(user, categoryId)).thenReturn(Optional.of(new ArrayList<>()));

        List<ExpenseDto> expenseDtos = expenseService.getExpensesByCategory(categoryId);

        assertNotNull(expenseDtos);
        assertEquals(0, expenseDtos.size());
        verify(userService, times(1)).getUserByUsername(user.getUsername());
        verify(expenseRepository, times(1)).findExpensesByCategoryForUser(user, categoryId);
    }

    @Test
    void testGetExpensesByCategory_NoUserCategoryForExpense() {
        BigInteger categoryId = BigInteger.valueOf(1);

        when(userCategoryService.getUserCategoryIfExists(categoryId)).thenReturn(Optional.empty());

        assertThrows(NoUserCategoryForExpenseException.class, () -> expenseService.getExpensesByCategory(categoryId));
        verify(userCategoryService, times(1)).getUserCategoryIfExists(categoryId);
    }

    @Test
    void testUpdateExpense() {
        BigInteger expenseId = BigInteger.valueOf(1);
        NewExpenseDto expenseDto = new NewExpenseDto();
        expenseDto.setTo("Expense Destination");
        expenseDto.setAmount(BigDecimal.valueOf(100));
        expenseDto.setCurrency(Currency.valueOf("USD"));
        expenseDto.setUserCategoryId(BigInteger.valueOf(1));

        Expense expense = new Expense();
        expense.setId(expenseId);

        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.of(expense));
        when(userCategoryService.getUserCategoryIfExists(expenseDto.getUserCategoryId()))
                .thenReturn(Optional.of(userCategory));

        String result = expenseService.updateExpense(expenseId, expenseDto);

        assertEquals("Expense has been updated successfully", result);
        verify(expenseRepository, times(1)).save(expense);
    }

    @Test
    void testUpdateExpense_ExpenseNotFound() {
        BigInteger expenseId = BigInteger.valueOf(1);
        NewExpenseDto expenseDto = new NewExpenseDto();
        expenseDto.setTo("Expense Destination");
        expenseDto.setAmount(BigDecimal.valueOf(100));
        expenseDto.setCurrency(Currency.valueOf("USD"));
        expenseDto.setUserCategoryId(BigInteger.valueOf(1));

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.empty());

        assertThrows(ExpenseNotFoundException.class, () -> expenseService.updateExpense(expenseId, expenseDto));
        verify(expenseRepository, times(0)).save(any(Expense.class));
    }

    @Test
    void testDeleteExpense() {
        BigInteger expenseId = BigInteger.valueOf(1);
        Expense expense = new Expense();
        expense.setId(expenseId);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.of(expense));
        when(userCategoryService.getUserCategoryIfExists(expense.getUserCategory().getId()))
                .thenReturn(Optional.of(userCategory));

        String result = expenseService.deleteExpense(expenseId);

        assertEquals("Expense has been deleted successfully", result);
        verify(expenseRepository, times(1)).deleteById(expenseId);
    }

    @Test
    void testDeleteExpense_ExpenseNotFound() {
        BigInteger expenseId = BigInteger.valueOf(1);

        when(expenseRepository.findById(expenseId)).thenReturn(Optional.empty());

        assertThrows(ExpenseNotFoundException.class, () -> expenseService.deleteExpense(expenseId));
        verify(expenseRepository, times(0)).deleteById(expenseId);
    }

    @Test
    void testExpensesSumByUserCategoryId() {
        BigInteger userCategoryId = BigInteger.valueOf(1);
        BigDecimal sumOfExpenses = BigDecimal.valueOf(100);

        when(expenseRepository.expensesSumByUserCategory(userCategoryId)).thenReturn(Optional.of(sumOfExpenses));

        BigDecimal result = expenseService.expensesSumByUserCategoryId(userCategoryId);

        assertEquals(sumOfExpenses, result);
        verify(expenseRepository, times(1)).expensesSumByUserCategory(userCategoryId);
    }

    @Test
    void testExpensesSumByUserCategoryId_UserHasNoExpenses() {
        BigInteger userCategoryId = BigInteger.valueOf(1);

        when(expenseRepository.expensesSumByUserCategory(userCategoryId)).thenReturn(null);

        BigDecimal result = expenseService.expensesSumByUserCategoryId(userCategoryId);

        assertEquals(BigDecimal.ZERO, result);
        verify(expenseRepository, times(1)).expensesSumByUserCategory(userCategoryId);
    }

    @Test
    void testExpensesSumByUserCategoryId_UserHasNoExpensesException() {
        BigInteger userCategoryId = BigInteger.valueOf(1);

        when(expenseRepository.expensesSumByUserCategory(userCategoryId)).thenReturn(Optional.of(BigDecimal.ZERO));

        assertThrows(UserHasNoExpensesException.class, () -> expenseService.expensesSumByUserCategoryId(userCategoryId));
        verify(expenseRepository, times(1)).expensesSumByUserCategory(userCategoryId);
    }
}
