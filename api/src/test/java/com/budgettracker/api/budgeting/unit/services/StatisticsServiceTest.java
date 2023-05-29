package com.budgettracker.api.budgeting.unit.services;

import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.exceptions.GivenDateIsInTheFutureException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthFormatException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthNumberException;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
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
import static org.mockito.ArgumentMatchers.any;
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

    @InjectMocks
    private StatisticsService statisticsService;

    @BeforeEach
    public void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getExpensesSumForMonth_ValidMonth_ReturnsExpensesMap() {
        String month = "2023-05";
        LocalDateTime startOfMonth = LocalDateTime.of(2023, 5, 1, 0, 0);
        LocalDateTime endOfMonth = LocalDateTime.of(2023, 5, 31, 23, 59);
        Pair<LocalDateTime, LocalDateTime> startAndEndDates = Pair.of(startOfMonth, endOfMonth);

        UserCategoryDto userCategory1 = new UserCategoryDto();
        userCategory1.setId(BigInteger.ONE);
        userCategory1.setName("Category 1");
        UserCategoryDto userCategory2 = new UserCategoryDto();
        userCategory2.setId(BigInteger.TWO);
        userCategory2.setName("Category 2");

        when(userCategoryService.getUserCategories()).thenReturn(List.of(userCategory1, userCategory2));
        when(expenseRepository.expensesSumByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth))).thenReturn(Optional.of(BigDecimal.valueOf(100)));
        when(expenseRepository.expensesSumByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth))).thenReturn(Optional.of(BigDecimal.valueOf(200)));

        Map<String, Map<String, BigDecimal>> result = statisticsService.getExpensesSumForMonth(month);

        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.containsKey("total"));
        assertTrue(result.containsKey("categories"));
        assertEquals(1, result.get("total").size());
        assertEquals(2, result.get("categories").size());
        assertTrue(result.get("total").containsKey("sum"));
        assertTrue(result.get("categories").containsKey("Category 1"));
        assertTrue(result.get("categories").containsKey("Category 2"));
        assertEquals(BigDecimal.valueOf(300), result.get("total").get("sum"));
        assertEquals(BigDecimal.valueOf(100), result.get("categories").get("Category 1"));
        assertEquals(BigDecimal.valueOf(200), result.get("categories").get("Category 2"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(expenseRepository, times(1)).expensesSumByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth));
        verify(expenseRepository, times(1)).expensesSumByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth));
    }

    @Test
    void getIncomesSumForMonth_ValidMonth_ReturnsIncomesMap() {
        String month = "2023-05";
        LocalDateTime startOfMonth = LocalDateTime.of(2023, 5, 1, 0, 0);
        LocalDateTime endOfMonth = LocalDateTime.of(2023, 5, 31, 23, 59);
        Pair<LocalDateTime, LocalDateTime> startAndEndDates = Pair.of(startOfMonth, endOfMonth);

        UserCategoryDto userCategory1 = new UserCategoryDto();
        userCategory1.setId(BigInteger.ONE);
        userCategory1.setName("Category 1");
        UserCategoryDto userCategory2 = new UserCategoryDto();
        userCategory2.setId(BigInteger.TWO);
        userCategory2.setName("Category 2");

        when(userCategoryService.getUserCategories()).thenReturn(List.of(userCategory1, userCategory2));
        when(incomeRepository.incomesSSumByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth))).thenReturn(Optional.of(BigDecimal.valueOf(300)));
        when(incomeRepository.incomesSSumByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth))).thenReturn(Optional.of(BigDecimal.valueOf(400)));

        Map<String, Map<String, BigDecimal>> result = statisticsService.getIncomesSumForMonth(month);

        assertNotNull(result);
        assertEquals(2, result.size());
        assertTrue(result.containsKey("total"));
        assertTrue(result.containsKey("categories"));
        assertEquals(1, result.get("total").size());
        assertEquals(2, result.get("categories").size());
        assertTrue(result.get("total").containsKey("sum"));
        assertTrue(result.get("categories").containsKey("Category 1"));
        assertTrue(result.get("categories").containsKey("Category 2"));
        assertEquals(BigDecimal.valueOf(700), result.get("total").get("sum"));
        assertEquals(BigDecimal.valueOf(300), result.get("categories").get("Category 1"));
        assertEquals(BigDecimal.valueOf(400), result.get("categories").get("Category 2"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(incomeRepository, times(1)).incomesSSumByUserCategoryBetweenDates(eq(BigInteger.ONE), eq(startOfMonth), eq(endOfMonth));
        verify(incomeRepository, times(1)).incomesSSumByUserCategoryBetweenDates(eq(BigInteger.TWO), eq(startOfMonth), eq(endOfMonth));
    }

    @Test
    void getExpenseMonthlyInfoForCurrentYear_ValidData_ReturnsExpenseMonthlyInfoMap() {
        UserCategoryDto userCategory1 = new UserCategoryDto();
        userCategory1.setId(BigInteger.ONE);
        userCategory1.setName("Category 1");
        UserCategoryDto userCategory2 = new UserCategoryDto();
        userCategory2.setId(BigInteger.TWO);
        userCategory2.setName("Category 2");

        when(userCategoryService.getUserCategories()).thenReturn(List.of(userCategory1, userCategory2));
        when(expenseRepository.expensesSumByUserCategoryBetweenDates(eq(BigInteger.ONE), any(LocalDateTime.class), any(LocalDateTime.class))).thenReturn(Optional.of(BigDecimal.valueOf(100)));
        when(expenseRepository.expensesSumByUserCategoryBetweenDates(eq(BigInteger.TWO), any(LocalDateTime.class), any(LocalDateTime.class))).thenReturn(Optional.of(BigDecimal.valueOf(200)));

        Map<String, Map<String, BigDecimal>> result = statisticsService.getExpenseMonthlyInfoForCurrentYear();

        assertNotNull(result);
        assertEquals(3, result.size());
        assertTrue(result.containsKey("totalYearExpenses"));
        assertEquals(1, result.get("totalYearExpenses").size());
        assertTrue(result.get("totalYearExpenses").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(300), result.get("totalYearExpenses").get("sum"));
        assertTrue(result.containsKey("Category 1"));
        assertTrue(result.get("Category 1").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(100), result.get("Category 1").get("sum"));
        assertTrue(result.get("Category 1").containsKey("average"));
        assertEquals(BigDecimal.valueOf(100).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 1").get("average"));
        assertTrue(result.containsKey("Category 2"));
        assertTrue(result.get("Category 2").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(200), result.get("Category 2").get("sum"));
        assertTrue(result.get("Category 2").containsKey("average"));
        assertEquals(BigDecimal.valueOf(200).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 2").get("average"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(expenseRepository, times(1)).expensesSumByUserCategoryBetweenDates(eq(BigInteger.ONE), any(LocalDateTime.class), any(LocalDateTime.class));
        verify(expenseRepository, times(1)).expensesSumByUserCategoryBetweenDates(eq(BigInteger.TWO), any(LocalDateTime.class), any(LocalDateTime.class));
    }

    @Test
    void getIncomeMonthlyInfoForCurrentYear_ValidData_ReturnsIncomeMonthlyInfoMap() {
        UserCategoryDto userCategory1 = new UserCategoryDto();
        userCategory1.setId(BigInteger.ONE);
        userCategory1.setName("Category 1");
        UserCategoryDto userCategory2 = new UserCategoryDto();
        userCategory2.setId(BigInteger.TWO);
        userCategory2.setName("Category 2");

        when(userCategoryService.getUserCategories()).thenReturn(List.of(userCategory1, userCategory2));
        when(incomeRepository.incomesSSumByUserCategoryBetweenDates(eq(BigInteger.ONE), any(LocalDateTime.class), any(LocalDateTime.class))).thenReturn(Optional.of(BigDecimal.valueOf(300)));
        when(incomeRepository.incomesSSumByUserCategoryBetweenDates(eq(BigInteger.TWO), any(LocalDateTime.class), any(LocalDateTime.class))).thenReturn(Optional.of(BigDecimal.valueOf(400)));

        Map<String, Map<String, BigDecimal>> result = statisticsService.getIncomeMonthlyInfoForCurrentYear();

        assertNotNull(result);
        assertEquals(3, result.size());
        assertTrue(result.containsKey("totalYearIncomes"));
        assertEquals(1, result.get("totalYearIncomes").size());
        assertTrue(result.get("totalYearIncomes").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(700), result.get("totalYearIncomes").get("sum"));
        assertTrue(result.containsKey("Category 1"));
        assertTrue(result.get("Category 1").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(300), result.get("Category 1").get("sum"));
        assertTrue(result.get("Category 1").containsKey("average"));
        assertEquals(BigDecimal.valueOf(300).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 1").get("average"));
        assertTrue(result.containsKey("Category 2"));
        assertTrue(result.get("Category 2").containsKey("sum"));
        assertEquals(BigDecimal.valueOf(400), result.get("Category 2").get("sum"));
        assertTrue(result.get("Category 2").containsKey("average"));
        assertEquals(BigDecimal.valueOf(400).divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP), result.get("Category 2").get("average"));

        verify(userCategoryService, times(1)).getUserCategories();
        verify(incomeRepository, times(1)).incomesSSumByUserCategoryBetweenDates(eq(BigInteger.ONE), any(LocalDateTime.class), any(LocalDateTime.class));
        verify(incomeRepository, times(1)).incomesSSumByUserCategoryBetweenDates(eq(BigInteger.TWO), any(LocalDateTime.class), any(LocalDateTime.class));
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

}
