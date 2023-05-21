package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import lombok.RequiredArgsConstructor;
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
    public Map<String, BigDecimal> getExpensesSumForCurrentMonth(){
        Map<String, BigDecimal> expenses = new HashMap<>();
        BigDecimal monthTotal = BigDecimal.ZERO;
        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = expenseRepository.expensesSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()),
                    LocalDateTime.now().with(lastDayOfMonth())).orElse(BigDecimal.ZERO);
            expenses.put(userCategory.getName(), sum);
            monthTotal = monthTotal.add(sum);
        }
        expenses.put("monthTotal", monthTotal);
        return expenses;
    }
    public Map<String, BigDecimal> getIncomesSumForCurrentMonth(){
        Map<String, BigDecimal> incomes = new HashMap<>();
        BigDecimal monthTotal = BigDecimal.ZERO;
        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = incomeRepository.incomesSSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()),
                    LocalDateTime.now().with(lastDayOfMonth())).orElse(BigDecimal.ZERO);
            incomes.put(userCategory.getName(), sum);
            monthTotal = monthTotal.add(sum);
        }
        incomes.put("monthTotal", monthTotal);
        return incomes;
    }
    public Map<String, Map<String, BigDecimal>> getExpenseMonthlyInfoForCurrentYear(){
        Map<String, Map<String, BigDecimal>> expenseMonthlyInfo = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;
        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = expenseRepository.expensesSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()).withMonth(1),
                    LocalDateTime.now().with(lastDayOfMonth()).withMonth(12)).orElse(BigDecimal.ZERO);
            yearTotal = computeMonthInfoAndReturnYearTotal(expenseMonthlyInfo, yearTotal, userCategory.getName(), sum);
        }
        Map<String, BigDecimal> total = new HashMap<>();
        total.put("sum", yearTotal);
        expenseMonthlyInfo.put("expensesYearTotal", total);
        return expenseMonthlyInfo;
    }

    public Map<String, Map<String, BigDecimal>> getIncomeMonthlyInfoForCurrentYear(){
        Map<String, Map<String, BigDecimal>> incomeMonthlyInfo = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;
        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            BigDecimal sum = incomeRepository.incomesSSumByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.now().with(firstDayOfMonth()).withMonth(1),
                    LocalDateTime.now().with(lastDayOfMonth()).withMonth(12)).orElse(BigDecimal.ZERO);
            yearTotal = computeMonthInfoAndReturnYearTotal(incomeMonthlyInfo, yearTotal, userCategory.getName(), sum);
        }
        Map<String, BigDecimal> total = new HashMap<>();
        total.put("sum", yearTotal);
        incomeMonthlyInfo.put("incomesYearTotal", total);
        return incomeMonthlyInfo;
    }

    private BigDecimal computeMonthInfoAndReturnYearTotal(Map<String, Map<String, BigDecimal>> incomeMonthlyInfo, BigDecimal yearTotal,
                                        String userCategoryName, BigDecimal sum) {
        BigDecimal monthlyAverage = sum.divide(BigDecimal.valueOf(12), RoundingMode.HALF_UP);
        Map<String, BigDecimal> monthInfo = new HashMap<>();
        monthInfo.put("average", monthlyAverage);
        monthInfo.put("sum", sum);
        incomeMonthlyInfo.put(userCategoryName, monthInfo);
        yearTotal = yearTotal.add(monthlyAverage);
        return yearTotal;
    }
}
