package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.GivenDateIsInTheFutureException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthFormatException;
import com.budgettracker.api.budgeting.exceptions.InvalidMonthNumberException;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static java.time.temporal.TemporalAdjusters.firstDayOfMonth;
import static java.time.temporal.TemporalAdjusters.lastDayOfMonth;

@Service
@RequiredArgsConstructor
public class StatisticsService {
    private final ExpenseRepository expenseRepository;
    private final IncomeRepository incomeRepository;
    private final UserCategoryService userCategoryService;
    private final CurrencyService currencyService;
    private final UserService userService;
    private final AuthenticationFacade authenticationFacade;
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

    public BigDecimal sumOfExpensesPerWeek(LocalDateTime startDate, LocalDateTime endDate, Currency currency){
        BigDecimal sumWeek = BigDecimal.valueOf(0);
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        BigDecimal exchange;
        Optional<List<Expense>> expenses = expenseRepository.expensesBetweenDates(user, startDate, endDate);
        if(expenses.isPresent()){
            for(Expense expense: expenses.get()){
                exchange = currencyService.getExchange(expense.getCurrency(), currency);
                sumWeek = sumWeek.add(exchange.multiply(expense.getAmount()));
            }
        }
        return sumWeek;
    }
    public Map<String, BigDecimal> getExpensesSumForMonthByWeek(String month, Optional<Currency> optionalCurrency){
        User user = userService.getUserByUsername(authenticationFacade.getAuthentication().getName());
        Pair<LocalDateTime, LocalDateTime> startAndEndDatesForMonth = getStartAndEndDatesForMonth(month);
        BigDecimal daysBetween = BigDecimal.valueOf(1 + ChronoUnit.DAYS.between(startAndEndDatesForMonth.getFirst(), startAndEndDatesForMonth.getSecond()));
        BigDecimal numberOfWeeks = daysBetween.divide(BigDecimal.valueOf(7), 0, BigDecimal.ROUND_UP);
        Map<String, BigDecimal> weeks = new HashMap<>();
        Currency currency;
        if(optionalCurrency.isPresent()){
            currency = optionalCurrency.get();
        }
        else{
            currency = user.getDefaultCurrency();
        }
        weeks.put("1", sumOfExpensesPerWeek(startAndEndDatesForMonth.getFirst(), startAndEndDatesForMonth.getFirst().plusDays(6), currency));
        weeks.put("2", sumOfExpensesPerWeek(startAndEndDatesForMonth.getFirst().plusDays(7), startAndEndDatesForMonth.getFirst().plusDays(13), currency));
        weeks.put("3", sumOfExpensesPerWeek(startAndEndDatesForMonth.getFirst().plusDays(14), startAndEndDatesForMonth.getFirst().plusDays(20), currency));
        weeks.put("4", sumOfExpensesPerWeek(startAndEndDatesForMonth.getFirst().plusDays(21), startAndEndDatesForMonth.getFirst().plusDays(27), currency));
        if(numberOfWeeks == BigDecimal.valueOf(5)){
            weeks.put("5", sumOfExpensesPerWeek(startAndEndDatesForMonth.getFirst().plusDays(28), startAndEndDatesForMonth.getSecond(), currency));
        }
        return weeks;
    }
}
