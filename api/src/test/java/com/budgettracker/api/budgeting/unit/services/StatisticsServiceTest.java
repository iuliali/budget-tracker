package com.budgettracker.api.budgeting.unit.services;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.GivenDateIsInTheFutureException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthFormatException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthNumberException;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import com.budgettracker.api.budgeting.services.CurrencyService;
import com.budgettracker.api.budgeting.services.StatisticsService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.util.Pair;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;
import static org.mockito.Mockito.times;

class StatisticsServiceTest {
    @Mock
    private ExpenseRepository expenseRepository;

    @Mock
    private IncomeRepository incomeRepository;

    @Mock
    private UserCategoryService userCategoryService;

    @Mock
    private CurrencyService currencyService;

    @Mock
    private UserService userService;

    @InjectMocks
    private StatisticsService statisticsService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    void setupUserCategoryDtos() {
        UserCategoryDto userCategory1 = new UserCategoryDto();
        userCategory1.setId(BigInteger.ONE);
        userCategory1.setName("Category 1");
        UserCategoryDto userCategory2 = new UserCategoryDto();
        userCategory2.setId(BigInteger.TWO);
        userCategory2.setName("Category 2");

        when(userCategoryService.getUserCategories()).thenReturn(List.of(userCategory1, userCategory2));
    }

    void setUpExchangeRates() {
        when(currencyService.getExchange(Currency.EUR, Currency.RON)).thenReturn(BigDecimal.valueOf(5));
        when(currencyService.getExchange(Currency.USD, Currency.RON)).thenReturn(BigDecimal.valueOf(4.5));
        when(currencyService.getExchange(Currency.RON, Currency.RON)).thenReturn(BigDecimal.ONE);
    }

    void setUpExpenses(LocalDateTime start, LocalDateTime end) {
        Expense expense1 = new Expense();
        expense1.setId(BigInteger.ONE);
        expense1.setAmount(BigDecimal.valueOf(100));
        expense1.setCurrency(Currency.RON);
        Expense expense2 = new Expense();
        expense2.setId(BigInteger.TWO);
        expense2.setAmount(BigDecimal.valueOf(50));
        expense2.setCurrency(Currency.EUR);
        Expense expense3 = new Expense();
        expense3.setId(BigInteger.TEN);
        expense3.setAmount(BigDecimal.valueOf(100));
        expense3.setCurrency(Currency.USD);

        when(expenseRepository.expensesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(start), eq(end))).thenReturn(Optional.of(List.of(expense1, expense2)));
        when(expenseRepository.expensesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(start), eq(end))).thenReturn(Optional.of(List.of(expense3)));
    }

    void setUpIncomes(LocalDateTime start, LocalDateTime end) {
        Income income1 = new Income();
        income1.setId(BigInteger.ONE);
        income1.setAmount(BigDecimal.valueOf(100));
        income1.setCurrency(Currency.RON);
        Income income2 = new Income();
        income2.setId(BigInteger.TWO);
        income2.setAmount(BigDecimal.valueOf(50));
        income2.setCurrency(Currency.EUR);
        Income income3 = new Income();
        income3.setId(BigInteger.TEN);
        income3.setAmount(BigDecimal.valueOf(100));
        income3.setCurrency(Currency.USD);

        when(incomeRepository.incomesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(start), eq(end))).thenReturn(Optional.of(List.of(income1, income2)));
        when(incomeRepository.incomesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(start), eq(end))).thenReturn(Optional.of(List.of(income3)));
    }

    @Test
    void getExpensesSumForMonth_ValidMonth_ReturnsExpensesMap() {
        String month = "2023-05";
        String currency = "RON";
        LocalDateTime startOfMonth = LocalDateTime.of(2023, 5, 1, 0, 0);
        LocalDateTime endOfMonth = LocalDateTime.of(2023, 5, 31, 23, 59);

        setupUserCategoryDtos();
        setUpExpenses(startOfMonth, endOfMonth);
        setUpExchangeRates();

        Map<String, Map<String, BigDecimal>> result = statisticsService.getExpensesSumForMonth(month, currency);

        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.containsKey("total"));
        assertTrue(result.containsKey("categories"));
        assertEquals(1, result.get("total").size());
        assertEquals(2, result.get("categories").size());
        assertTrue(result.get("total").containsKey("sum"));
        assertTrue(result.get("categories").containsKey("Category 1"));
        assertTrue(result.get("categories").containsKey("Category 2"));
        assertEquals(BigDecimal.valueOf(800.0), result.get("total").get("sum"));
        assertEquals(BigDecimal.valueOf(350), result.get("categories").get("Category 1"));
        assertEquals(BigDecimal.valueOf(450.0), result.get("categories").get("Category 2"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(expenseRepository, times(1)).expensesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth));
        verify(expenseRepository, times(1)).expensesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth));
    }

    @Test
    void getIncomesSumForMonth_ValidMonth_ReturnsIncomesMap() {
        String month = "2023-05";
        String currency = "RON";
        LocalDateTime startOfMonth = LocalDateTime.of(2023, 5, 1, 0, 0);
        LocalDateTime endOfMonth = LocalDateTime.of(2023, 5, 31, 23, 59);
        Pair<LocalDateTime, LocalDateTime> startAndEndDates = Pair.of(startOfMonth, endOfMonth);

        setupUserCategoryDtos();
        setUpIncomes(startOfMonth, endOfMonth);
        setUpExchangeRates();

        Map<String, Map<String, BigDecimal>> result = statisticsService.getIncomesSumForMonth(month, currency);

        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.containsKey("total"));
        assertTrue(result.containsKey("categories"));
        assertEquals(1, result.get("total").size());
        assertEquals(2, result.get("categories").size());
        assertTrue(result.get("total").containsKey("sum"));
        assertTrue(result.get("categories").containsKey("Category 1"));
        assertTrue(result.get("categories").containsKey("Category 2"));
        assertEquals(BigDecimal.valueOf(800.0), result.get("total").get("sum"));
        assertEquals(BigDecimal.valueOf(350), result.get("categories").get("Category 1"));
        assertEquals(BigDecimal.valueOf(450.0), result.get("categories").get("Category 2"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(incomeRepository, times(1)).incomesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth));
        verify(incomeRepository, times(1)).incomesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth));
    }

    @Test
    void getExpenseMonthlyInfoForCurrentYear_ValidData_ReturnsExpenseMonthlyInfoMap() {
        String year = "2023";
        String currency = "RON";
        LocalDateTime startOfYear = LocalDateTime.of(2023, 1, 1, 0, 0);
        LocalDateTime endOfYear = LocalDateTime.of(2023, 12, 31, 23, 59);

        setupUserCategoryDtos();
        setUpExpenses(startOfYear, endOfYear);
        setUpExchangeRates();

        Map<String, Map<String, BigDecimal>> result = statisticsService.getExpenseMonthlyInfoForYear(year, currency);

        assertNotNull(result);
        assertEquals(3, result.size());
        assertTrue(result.containsKey("totalYearExpenses"));
        assertEquals(1, result.get("totalYearExpenses").size());
        assertTrue(result.get("totalYearExpenses").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(800.0), result.get("totalYearExpenses").get("sum"));
        assertTrue(result.containsKey("Category 1"));
        assertTrue(result.get("Category 1").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(350), result.get("Category 1").get("sum"));
        assertTrue(result.get("Category 1").containsKey("average"));
        assertEquals(BigDecimal.valueOf(350).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 1").get("average"));
        assertTrue(result.containsKey("Category 2"));
        assertTrue(result.get("Category 2").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(450.0), result.get("Category 2").get("sum"));
        assertTrue(result.get("Category 2").containsKey("average"));
        assertEquals(BigDecimal.valueOf(450.0).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 2").get("average"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(expenseRepository, times(1)).expensesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfYear), eq(endOfYear));
        verify(expenseRepository, times(1)).expensesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfYear), eq(endOfYear));
    }

    @Test
    void getIncomeMonthlyInfoForCurrentYear_ValidData_ReturnsIncomeMonthlyInfoMap() {
        String year = "2023";
        String currency = "RON";
        LocalDateTime startOfYear = LocalDateTime.of(2023, 1, 1, 0, 0);
        LocalDateTime endOfYear = LocalDateTime.of(2023, 12, 31, 23, 59);

        setupUserCategoryDtos();
        setUpIncomes(startOfYear, endOfYear);
        setUpExchangeRates();

        Map<String, Map<String, BigDecimal>> result = statisticsService.getIncomeMonthlyInfoForYear(year, currency);

        assertNotNull(result);
        assertEquals(3, result.size());
        assertTrue(result.containsKey("totalYearIncomes"));
        assertEquals(1, result.get("totalYearIncomes").size());
        assertTrue(result.get("totalYearIncomes").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(800.0), result.get("totalYearIncomes").get("sum"));
        assertTrue(result.containsKey("Category 1"));
        assertTrue(result.get("Category 1").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(350), result.get("Category 1").get("sum"));
        assertTrue(result.get("Category 1").containsKey("average"));
        assertEquals(BigDecimal.valueOf(350).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 1").get("average"));
        assertTrue(result.containsKey("Category 2"));
        assertTrue(result.get("Category 2").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(450.0), result.get("Category 2").get("sum"));
        assertTrue(result.get("Category 2").containsKey("average"));
        assertEquals(BigDecimal.valueOf(450.0).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 2").get("average"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(incomeRepository, times(1)).incomesByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfYear), eq(endOfYear));
        verify(incomeRepository, times(1)).incomesByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfYear), eq(endOfYear));
    }

    @Test
    void getStartAndEndDatesForMonth_ValidMonth_ReturnsStartAndEndDates() {
        String month = "2023-05";

        Pair<LocalDateTime, LocalDateTime> result = statisticsService.getStartAndEndDatesForMonth(month);

        assertNotNull(result);
        assertEquals(LocalDateTime.of(2023, 5, 1, 0, 0), result.getFirst());
        assertEquals(LocalDateTime.of(2023, 5, 31, 23, 59), result.getSecond());
    }

    @Test
    void getStartAndEndDatesForMonth_InvalidMonth_ThrowsGivenDateIsInTheFutureException(){
        String month = "4000-05";

        assertThrows(GivenDateIsInTheFutureException.class, () -> statisticsService.getStartAndEndDatesForMonth(month));
    }

    @Test
    void getStartAndEndDatesForMonth_InvalidMonth_ThrowsInvalidMonthNumberException(){
        String month = "2023-13";

        assertThrows(InvalidMonthNumberException.class, () -> statisticsService.getStartAndEndDatesForMonth(month));
    }

    @Test
    void getStartAndEndDatesForMonth_InvalidMonth_ThrowsInvalidMonthFormatException(){
        String month = "2023-05-05";

        assertThrows(InvalidMonthFormatException.class, () -> statisticsService.getStartAndEndDatesForMonth(month));
    }

    @Test
    void getToCurrencyBlankString() {
        String currency = "";
        when(userService.getDefaultCurrency()).thenReturn(Currency.RON);

        Currency resultCurrency = statisticsService.getToCurrency(currency);
        assertEquals(Currency.RON, resultCurrency);
    }

    @Test
    void getYearNumberValidYear() {
        String year = "2023";
        int result = statisticsService.getYearNumber(year);
        assertEquals(2023, result);
    }

}
