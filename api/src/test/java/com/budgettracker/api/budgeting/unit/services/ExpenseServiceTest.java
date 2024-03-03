package com.budgettracker.api.budgeting.unit.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.BudgetDTO;
import com.budgettracker.api.budgeting.dtos.ExpenseDto;
import com.budgettracker.api.budgeting.dtos.NewExpenseDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.ExpenseNotFoundException;
import com.budgettracker.api.budgeting.exceptions.NoUserCategoryForExpenseException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoExpensesException;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.services.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

class ExpenseServiceTest {
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

    @Mock
    private StatisticsService statisticsService;
    @Mock
    private CurrencyService currencyService;

    @InjectMocks
    private ExpenseService expenseService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetExpenseById() {
        BigInteger expenseId = BigInteger.valueOf(1);
        Expense expense = new Expense();
        expense.setId(expenseId);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));
        expense.setUserCategory(userCategory);

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
        BigDecimal sumOfExpenses = BigDecimal.valueOf(50);

        BudgetDTO budget = new BudgetDTO(BigInteger.TWO, BigDecimal.valueOf(100), userCategoryId, null);

        when(expenseRepository.expensesByUserCategoryBetweenDates(
                any(BigInteger.class),
                any(LocalDateTime.class),
                any(LocalDateTime.class))
        ).thenReturn(Optional.empty());
        when(userService.getDefaultCurrency()).thenReturn(Currency.USD);
        when(statisticsService.getExpenseSum(Optional.empty(), Currency.USD)).thenReturn(BigDecimal.valueOf(50));
        when(expenseService.expensesSumByUserCategoryIdForCurrentMonth(userCategoryId)).thenReturn(sumOfExpenses);
        when(budgetService.getActiveBudget(userCategoryId, Optional.empty())).thenReturn(budget);
        when(currencyService.getExchange(any(Currency.class), any(Currency.class))).thenReturn(BigDecimal.ONE);

        boolean result = expenseService.checkIfNewExpenseIsOverBudget(newExpenseAmount, Currency.RON, userCategoryId);

        assertTrue(result);
        verify(statisticsService, times(1)).getExpenseSum(eq(Optional.empty()), any(Currency.class));
    }


    @Test
    void testCreateExpense() {
        NewExpenseDto newExpenseDto = new NewExpenseDto();
        newExpenseDto.setTo("Expense To");
        newExpenseDto.setAmount(BigDecimal.valueOf(100));
        newExpenseDto.setCurrency(Currency.USD);
        newExpenseDto.setUserCategoryId(BigInteger.valueOf(1));

        BudgetDTO activeBudget = new BudgetDTO();
        activeBudget.setAmount(BigDecimal.valueOf(500));
        when(budgetService.getActiveBudget(any(BigInteger.class), eq(Optional.empty()))).thenReturn(activeBudget);

        UserCategory userCategory = new UserCategory();
        userCategory.setId(newExpenseDto.getUserCategoryId());
        when(userCategoryService.getUserCategoryIfExists(any(BigInteger.class))).thenReturn(Optional.of(userCategory));

        Expense savedExpense = new Expense();
        savedExpense.setId(BigInteger.valueOf(1));
        savedExpense.setTo(newExpenseDto.getTo());
        savedExpense.setAmount(newExpenseDto.getAmount());
        savedExpense.setCurrency(newExpenseDto.getCurrency());
        savedExpense.setRegisteredAt(LocalDateTime.now());
        savedExpense.setUserCategory(userCategory);
        when(expenseRepository.save(any(Expense.class))).thenReturn(savedExpense);

        when(currencyService.getExchange(any(Currency.class), any(Currency.class))).thenReturn(BigDecimal.ONE);
        when(userService.getDefaultCurrency()).thenReturn(Currency.USD);
        when(expenseRepository.expensesByUserCategoryBetweenDates(
                any(BigInteger.class),
                any(LocalDateTime.class),
                any(LocalDateTime.class))
        ).thenReturn(Optional.empty());
        when(statisticsService.getExpenseSum(Optional.empty(), Currency.USD)).thenReturn(BigDecimal.valueOf(50));

        Map<String, String> result = expenseService.createExpense(newExpenseDto);

        assertNotNull(result);
        assertEquals("Expense has been added successfully", result.get("message"));
        assertEquals("No warning", result.get("warning"));

        verify(expenseRepository, times(1)).save(any(Expense.class));
        verify(budgetService, times(1)).getActiveBudget(any(BigInteger.class), eq(Optional.empty()));
        verify(currencyService, times(1)).getExchange(any(Currency.class), any(Currency.class));
    }


    @Test
    void testCreateExpense_ExpenseOverBudget() {
        NewExpenseDto expenseDto = new NewExpenseDto();
        expenseDto.setAmount(BigDecimal.valueOf(100));
        expenseDto.setCurrency(Currency.USD);
        expenseDto.setUserCategoryId(BigInteger.valueOf(1));

        BudgetDTO budgetDTO = new BudgetDTO();
        budgetDTO.setAmount(BigDecimal.valueOf(150));
        when(budgetService.getActiveBudget(any(BigInteger.class), eq(Optional.empty()))).thenReturn(budgetDTO);

        UserCategory userCategory = new UserCategory();
        userCategory.setId(expenseDto.getUserCategoryId());
        when(userCategoryService.getUserCategoryIfExists(any(BigInteger.class))).thenReturn(Optional.of(userCategory));
        when(currencyService.getExchange(any(Currency.class), any(Currency.class))).thenReturn(BigDecimal.ONE);
        when(userService.getDefaultCurrency()).thenReturn(Currency.USD);
        when(expenseRepository.expensesByUserCategoryBetweenDates(
                any(BigInteger.class),
                any(LocalDateTime.class),
                any(LocalDateTime.class))
        ).thenReturn(Optional.empty());
        when(statisticsService.getExpenseSum(Optional.empty(), Currency.USD)).thenReturn(BigDecimal.valueOf(100));

        Map<String, String> result = expenseService.createExpense(expenseDto);

        assertEquals("Expense has been added successfully", result.get("message"));
        assertEquals("You are over budget for this category", result.get("warning"));

        verify(budgetService, times(1)).getActiveBudget(any(BigInteger.class), eq(Optional.empty()));
        verify(expenseRepository, times(1)).save(any(Expense.class));
    }

    @Test
    void testCreateExpense_ExpenseOverBudget_DifferentCurrency() {
        NewExpenseDto expenseDto = new NewExpenseDto();
        expenseDto.setAmount(BigDecimal.valueOf(20));
        expenseDto.setCurrency(Currency.USD);
        expenseDto.setUserCategoryId(BigInteger.valueOf(1));

        BudgetDTO budgetDTO = new BudgetDTO();
        budgetDTO.setAmount(BigDecimal.valueOf(150));
        when(budgetService.getActiveBudget(any(BigInteger.class), eq(Optional.empty()))).thenReturn(budgetDTO);

        UserCategory userCategory = new UserCategory();
        userCategory.setId(expenseDto.getUserCategoryId());
        when(userCategoryService.getUserCategoryIfExists(any(BigInteger.class))).thenReturn(Optional.of(userCategory));
        when(currencyService.getExchange(eq(Currency.USD), eq(Currency.RON))).thenReturn(BigDecimal.valueOf(5));
        when(userService.getDefaultCurrency()).thenReturn(Currency.RON);
        when(expenseRepository.expensesByUserCategoryBetweenDates(
                any(BigInteger.class),
                any(LocalDateTime.class),
                any(LocalDateTime.class))
        ).thenReturn(Optional.empty());
        when(statisticsService.getExpenseSum(Optional.empty(), Currency.RON)).thenReturn(BigDecimal.valueOf(100));

        Map<String, String> result = expenseService.createExpense(expenseDto);

        assertEquals("Expense has been added successfully", result.get("message"));
        assertEquals("You are over budget for this category", result.get("warning"));

        verify(budgetService, times(1)).getActiveBudget(any(BigInteger.class), eq(Optional.empty()));
        verify(expenseRepository, times(1)).save(any(Expense.class));
    }


    @Test
    void getExpenses_ShouldReturnListOfExpenses_WhenUserHasExpenses() {
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        List<Expense> expenses = new ArrayList<>();
        Expense expense1 = new Expense();
        expense1.setUserCategory(new UserCategory());
        expenses.add(expense1);
        when(expenseRepository.findExpensesByUser(user)).thenReturn(Optional.of(expenses));
        List<ExpenseDto> result = expenseService.getExpenses();
        assertNotNull(result);
        assertEquals(1, result.size());
    }

    @Test
    void getExpenses_ShouldThrowUserHasNoExpensesException_WhenUserHasNoExpenses() {
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        when(expenseRepository.findExpensesByUser(user)).thenReturn(Optional.empty());
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        assertThrows(UserHasNoExpensesException.class, () -> expenseService.getExpenses());
        verify(authenticationFacade, times(1)).getAuthentication();
        verify(userService, times(1)).getUserByUsername("testUser");
        verify(expenseRepository, times(1)).findExpensesByUser(user);
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
        expenseDto.setCurrency(Currency.USD);
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
        expense.setUserCategory(userCategory);
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
    void testExpensesSumByUserCategoryIdForCurrentMonth() {
        BigInteger userCategoryId = BigInteger.valueOf(1);
        BigDecimal expectedSum = BigDecimal.valueOf(1000);
        when(userService.getDefaultCurrency()).thenReturn(Currency.USD);
        when(expenseRepository.expensesByUserCategoryBetweenDates(
                eq(userCategoryId),
                any(LocalDateTime.class),
                any(LocalDateTime.class))
        ).thenReturn(Optional.empty());
        when(statisticsService.getExpenseSum(eq(Optional.empty()), any(Currency.class))).thenReturn(expectedSum);
        BigDecimal actualSum = expenseService.expensesSumByUserCategoryIdForCurrentMonth(userCategoryId);
        assertEquals(expectedSum, actualSum);
        verify(expenseRepository, times(1)).expensesByUserCategoryBetweenDates(
                eq(userCategoryId),
                any(LocalDateTime.class),
                any(LocalDateTime.class)
        );
        verify(statisticsService, times(1)).getExpenseSum(eq(Optional.empty()), any(Currency.class));
    }
}
