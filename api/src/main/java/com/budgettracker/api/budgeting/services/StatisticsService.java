package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.exceptions.GivenDateIsInTheFutureException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthFormatException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthNumberException;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.time.temporal.TemporalAdjusters.firstDayOfMonth;
import static java.time.temporal.TemporalAdjusters.lastDayOfMonth;

@Service
@RequiredArgsConstructor
public class StatisticsService {
    private final ExpenseRepository expenseRepository;
    private final IncomeRepository incomeRepository;
    private final UserCategoryService userCategoryService;
    private final CurrencyService currencyService;
    public Map<String, Map<String, BigDecimal>> getExpensesSumForMonth(String month){
        Pair<LocalDateTime, LocalDateTime> startAndEndDatesForMonth = getStartAndEndDatesForMonth(month);

        Map<String, Map<String, BigDecimal>> expenses = new HashMap<>();
        Map<String, BigDecimal> categories = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal monthTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = expenseRepository.expensesSumByUserCategoryBetweenDates(userCategory.getId(),
                    startAndEndDatesForMonth.getFirst(),
                    startAndEndDatesForMonth.getSecond()).orElse(BigDecimal.ZERO);
            categories.put(userCategory.getName(), sum);
            monthTotal = monthTotal.add(sum);
        }

        total.put("sum", monthTotal);
        expenses.put("total", total);
        expenses.put("categories", categories);

        return expenses;
    }
    public Map<String, Map<String, BigDecimal>> getIncomesSumForMonth(String month){
            Pair<LocalDateTime, LocalDateTime> startAndEndDatesForMonth = getStartAndEndDatesForMonth(month);

            Map<String, Map<String, BigDecimal>> incomes = new HashMap<>();
            Map<String, BigDecimal> categories = new HashMap<>();
            Map<String, BigDecimal> total = new HashMap<>();
            BigDecimal monthTotal = BigDecimal.ZERO;

            List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
            for (UserCategoryDto userCategory : userCategories) {
                BigDecimal sum = incomeRepository.incomesSSumByUserCategoryBetweenDates(userCategory.getId(),
                        startAndEndDatesForMonth.getFirst(),
                        startAndEndDatesForMonth.getSecond()).orElse(BigDecimal.ZERO);
                categories.put(userCategory.getName(), sum);
                monthTotal = monthTotal.add(sum);
            }

            total.put("sum", monthTotal);
            incomes.put("total", total);
            incomes.put("categories", categories);

            return incomes;

    }
    public Map<String, Map<String, BigDecimal>> getExpenseMonthlyInfoForCurrentYear(){
        Map<String, Map<String, BigDecimal>> expenseMonthlyInfo = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = expenseRepository.expensesSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()).withMonth(1),
                    LocalDateTime.now().with(lastDayOfMonth()).withMonth(12)).orElse(BigDecimal.ZERO);
            yearTotal = yearTotal.add(sum);
            computeMonthInfo(expenseMonthlyInfo, userCategory.getName(), sum);
        }

        total.put("sum", yearTotal);
        expenseMonthlyInfo.put("totalYearExpenses", total);

        return expenseMonthlyInfo;
    }

    public Map<String, Map<String, BigDecimal>> getIncomeMonthlyInfoForCurrentYear(){
        Map<String, Map<String, BigDecimal>> incomeMonthlyInfo = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = incomeRepository.incomesSSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()).withMonth(1),
                    LocalDateTime.now().with(lastDayOfMonth()).withMonth(12)).orElse(BigDecimal.ZERO);
            yearTotal = yearTotal.add(sum);
            computeMonthInfo(incomeMonthlyInfo, userCategory.getName(), sum);
        }

        total.put("sum", yearTotal);
        incomeMonthlyInfo.put("totalYearIncomes", total);

        return incomeMonthlyInfo;
    }

    private void computeMonthInfo(Map<String, Map<String, BigDecimal>> monthlyInfo, String userCategoryName, BigDecimal sum) {
        BigDecimal monthlyAverage = sum.divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP);
        Map<String, BigDecimal> monthInfo = new HashMap<>();
        monthInfo.put("average", monthlyAverage);
        monthInfo.put("sum", sum);
        monthlyInfo.put(userCategoryName, monthInfo);
    }
    public Pair<LocalDateTime, LocalDateTime> getStartAndEndDatesForMonth(String month){
        if (!month.matches("\\d{4}-\\d{2}")) {
            throw new InvalidMonthFormatException();
        }
        String[] monthParts = month.split("-");
        int year = Integer.parseInt(monthParts[0]);
        int monthNumber = Integer.parseInt(monthParts[1]);
        if (monthNumber < 1 || monthNumber > 12) {
            throw new InvalidMonthNumberException();
        }
        LocalDateTime startDate = LocalDateTime.of(year, monthNumber, 1, 0, 0);
        if (LocalDateTime.now().isBefore(startDate)) {
            throw new GivenDateIsInTheFutureException();
        }
        LocalDateTime endDate = LocalDateTime.of(year, monthNumber, startDate.toLocalDate().lengthOfMonth(), 23, 59);
        return Pair.of(startDate, endDate);
    }
}
