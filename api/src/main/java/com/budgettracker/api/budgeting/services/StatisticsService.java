package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.GivenDateIsInTheFutureException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthFormatException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthNumberException;
import com.budgettracker.api.budgeting.exceptions.InvalidYearFormatException;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.models.Income;
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
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class StatisticsService {
    private final ExpenseRepository expenseRepository;
    private final IncomeRepository incomeRepository;
    private final UserCategoryService userCategoryService;
    private final CurrencyService currencyService;
    private final UserService userService;

    public Map<String, Map<String, BigDecimal>> getExpensesSumForMonth(String month, String currency){
        Pair<LocalDateTime, LocalDateTime> startAndEndDatesForMonth = getStartAndEndDatesForMonth(month);

        Map<String, Map<String, BigDecimal>> expensesMap = new HashMap<>();
        Map<String, BigDecimal> categories = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal monthTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            Optional<List<Expense>> expenses = expenseRepository.expensesByUserCategoryBetweenDates(userCategory.getId(),
                    startAndEndDatesForMonth.getFirst(),
                    startAndEndDatesForMonth.getSecond());

            BigDecimal sum = getExpenseSum(expenses, getToCurrency(currency));
            categories.put(userCategory.getName(), sum);
            monthTotal = monthTotal.add(sum);
        }

        total.put("sum", monthTotal);
        expensesMap.put("total", total);
        expensesMap.put("categories", categories);

        return expensesMap;
    }

    public Map<String, Map<String, BigDecimal>> getIncomesSumForMonth(String month, String currency){
            Pair<LocalDateTime, LocalDateTime> startAndEndDatesForMonth = getStartAndEndDatesForMonth(month);

            Map<String, Map<String, BigDecimal>> incomesMap = new HashMap<>();
            Map<String, BigDecimal> categories = new HashMap<>();
            Map<String, BigDecimal> total = new HashMap<>();
            BigDecimal monthTotal = BigDecimal.ZERO;

            List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
            for (UserCategoryDto userCategory : userCategories) {
                Optional<List<Income>> incomes = incomeRepository.incomesByUserCategoryBetweenDates(userCategory.getId(),
                        startAndEndDatesForMonth.getFirst(),
                        startAndEndDatesForMonth.getSecond());

                BigDecimal sum = getIncomeSum(incomes, getToCurrency(currency));
                categories.put(userCategory.getName(), sum);
                monthTotal = monthTotal.add(sum);
            }

            total.put("sum", monthTotal);
            incomesMap.put("total", total);
            incomesMap.put("categories", categories);

            return incomesMap;
    }
    public Map<String, Map<String, BigDecimal>> getExpenseMonthlyInfoForYear(String year, String currency){
        int yearNumber = getYearNumber(year);
        Map<String, Map<String, BigDecimal>> expenseMonthlyInfo = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            Optional<List<Expense>> expenses = expenseRepository.expensesByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.of(yearNumber, 1, 1, 0, 0),
                    LocalDateTime.of(yearNumber, 12, 31, 23, 59));

            BigDecimal sum = getExpenseSum(expenses, getToCurrency(currency));
            yearTotal = yearTotal.add(sum);
            computeMonthInfo(expenseMonthlyInfo, userCategory.getName(), sum);
        }

        total.put("sum", yearTotal);
        expenseMonthlyInfo.put("totalYearExpenses", total);

        return expenseMonthlyInfo;
    }

    public Map<String, Map<String, BigDecimal>> getIncomeMonthlyInfoForYear(String year, String currency){
        int yearNumber = getYearNumber(year);
        Map<String, Map<String, BigDecimal>> incomeMonthlyInfo = new HashMap<>();
        Map<String, BigDecimal> total = new HashMap<>();
        BigDecimal yearTotal = BigDecimal.ZERO;

        List<UserCategoryDto> userCategories = userCategoryService.getUserCategories();
        for (UserCategoryDto userCategory : userCategories) {
            Optional<List<Income>> incomes = incomeRepository.incomesByUserCategoryBetweenDates(userCategory.getId(),
                    LocalDateTime.of(yearNumber, 1, 1, 0, 0),
                    LocalDateTime.of(yearNumber, 12, 31, 23, 59));
            BigDecimal sum = getIncomeSum(incomes, getToCurrency(currency));
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

    public Integer getYearNumber(String year) {
        if (!year.matches("\\d{4}")) {
            throw new InvalidYearFormatException();
        }
        return Integer.parseInt(year);
    }

    public BigDecimal getIncomeSum(Optional<List<Income>> incomes, Currency toCurrency) {
        BigDecimal sum = BigDecimal.ZERO;
        if(incomes.isPresent()){
            for(Income income: incomes.get()){
                BigDecimal exchangeRate = currencyService.getExchange(income.getCurrency(), toCurrency);
                sum = sum.add(exchangeRate.multiply(income.getAmount()));
            }
        }
        return sum;
    }

    public BigDecimal getExpenseSum(Optional<List<Expense>> expenses, Currency toCurrency) {
        BigDecimal sum = BigDecimal.ZERO;
        if(expenses.isPresent()){
            for(Expense expense: expenses.get()){
                BigDecimal exchangeRate = currencyService.getExchange(expense.getCurrency(), toCurrency);
                sum = sum.add(exchangeRate.multiply(expense.getAmount()));
            }
        }
        return sum;
    }

    public Currency getToCurrency(String currency) {
        if (currency != null && !currency.trim().isEmpty()) {
            return Currency.valueOf(currency);
        }
        else {
            return userService.getDefaultCurrency();
        }
    }
}
