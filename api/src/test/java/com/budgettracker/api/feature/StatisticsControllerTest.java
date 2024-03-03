package com.budgettracker.api.feature;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.dtos.AuthenticationRequest;
import com.budgettracker.api.auth.dtos.NewUserDto;
import com.budgettracker.api.auth.email.EmailService;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.services.ConfirmationTokenService;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import com.budgettracker.api.budgeting.repositories.UserCategoryRepository;
import com.budgettracker.api.budgeting.services.CurrencyService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;

import static org.springframework.security.test.web.servlet.setup.SecurityMockMvcConfigurers.springSecurity;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@AutoConfigureMockMvc
@SpringBootTest
public class StatisticsControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private WebApplicationContext webApplicationContext;

    @Autowired
    UserService userService;

    @Autowired
    UserCategoryRepository userCategoryRepository;

    @Autowired
    AuthenticationFacade authenticationFacade;

    @Autowired
    ExpenseRepository expenseRepository;

    @Autowired
    IncomeRepository incomeRepository;

    @MockBean
    EmailService emailService;

    @Autowired
    ConfirmationTokenService confirmationTokenService;

    private static String authToken;

    @Autowired
    private CurrencyService currencyService;
    private static User user;

    public void setup() {
        mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).apply(springSecurity()).build();
    }

    public void createUser() {
        NewUserDto newUserDto = new NewUserDto("TestTest123", "TestTest123",
                "TestTest123@email.com", "TestTest123", "TestTest123", Currency.USD);
        try {
            if (userService.getUserByUsername(newUserDto.getUsername()) != null) {
                return;
            }
        } catch (Exception e){

        }
        userService.createUser(newUserDto);
        newUserDto.setDefaultCurrency(Currency.USD);
        user = userService.getUserByUsername(newUserDto.getUsername());
        String token = confirmationTokenService.getAndSaveConfirmationToken(user);
        userService.confirmToken(token);
        authToken = userService.authenticate(new AuthenticationRequest(user.getUsername(), "TestTest123"));
    }


    private void createUserCategory(BigInteger userCategoryId) {
        if (userCategoryRepository.findByNameAndUserId("TestCategory", user.getId()).isPresent()) {
            return;
        }
        UserCategory userCategory = new UserCategory();
        userCategory.setId(userCategoryId);
        userCategory.setName("TestCategory");
        userCategory.setUser(user);
        userCategoryRepository.save(userCategory);
    }

    private void createExpense(String to, BigDecimal amount, Currency currency, BigInteger userCategoryId, LocalDateTime registeredAt) {
        Expense expense = new Expense();
        expense.setAmount(amount);
        expense.setCurrency(currency);
        expense.setTo(to);
        expense.setUserCategory(userCategoryRepository.findById(userCategoryId).get());
        expense.setRegisteredAt(registeredAt);
        expenseRepository.save(expense);
    }

    private void createIncome(String from, BigDecimal amount, Currency currency, BigInteger userCategoryId, LocalDateTime registeredAt) {
        Income income = new Income();
        income.setAmount(amount);
        income.setCurrency(currency);
        income.setFrom(from);
        income.setUserCategory(userCategoryRepository.findById(userCategoryId).get());
        income.setRegisteredAt(registeredAt);
        incomeRepository.save(income);
    }

    @BeforeEach
    public void init() {
        createUser();
        createUserCategory(BigInteger.valueOf(1));
    }

    @AfterEach
    public void cleanUp() {
        incomeRepository.deleteAll();
        expenseRepository.deleteAll();
    }


    @Test
    void getExpensesSumForMonth_ReturnsUnauthorized() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-expenses/2024-01/RON")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isForbidden()); // 403
    }

    @Test
    void getExpensesSumForMonth_ReturnsOk() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-expenses/2024-01/RON")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getExpensesSumForMonth() throws Exception {
        createExpense("TestExpense1", BigDecimal.valueOf(100), Currency.USD, BigInteger.valueOf(1),
            LocalDateTime.of(2023, 1, 1, 0, 0));
        createExpense("TestExpense2", BigDecimal.valueOf(199), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2024, 1, 1, 1, 0));
        createExpense("TestExpense3", BigDecimal.valueOf(100), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2024, 1, 30, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-expenses/2024-01/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.total.sum").value(299));
    }

    @Test
    void getExpensesSumForYear() throws Exception {
        createExpense("TestExpense1Year", BigDecimal.valueOf(100), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2021, 1, 1, 0, 0));
        createExpense("TestExpense2Year", BigDecimal.valueOf(199), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2024, 1, 1, 1, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/year-expenses/2021/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.total.sum").value(100));
    }

    @Test
    void getIncomesSumForMonth_ReturnsOk() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-incomes/2023-12/EUR")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getYearExpenses_ReturnsOk() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/year-expenses/2023/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getYearIncomes_ReturnsOk() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/year-incomes/2024/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getWeekIncomesByMonth_ReturnsOk() throws Exception{
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-incomes-by-month/2024-01/EUR")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getWeekExpensesByMonth_ReturnsOk() throws Exception{
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-expenses-by-month/2023-12/RON")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    void getSumOfIncomesPerWeek_SumForOneWeek() throws Exception{
        createIncome("TestIncome1", BigDecimal.valueOf(100), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 1, 0, 0));
        createIncome("TestIncome2", BigDecimal.valueOf(150), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 5, 1, 0));
        createIncome("TestIncome3", BigDecimal.valueOf(100), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 17, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-incomes-by-month/2023-12/RON")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.['1']").value(250));
    }

    @Test
    void getSumOfIncomesPerWeek_FirstWeekSumIsZero() throws Exception{
        createIncome("TestIncome1", BigDecimal.valueOf(100), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 12, 0, 0));
        createIncome("TestIncome2", BigDecimal.valueOf(150), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 25, 1, 0));
        createIncome("TestIncome3", BigDecimal.valueOf(100), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 17, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-incomes-by-month/2023-12/RON")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.['1']").value(0));
    }

    @Test
    void getSumOfExpensesPerWeek_SumForOneWeek() throws Exception{
        createExpense("TestExpense1", BigDecimal.valueOf(25), Currency.EUR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 11, 1, 0, 0));
        createExpense("TestExpense2", BigDecimal.valueOf(125), Currency.EUR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 11, 10, 1, 0));
        createExpense("TestExpense3", BigDecimal.valueOf(25.5), Currency.EUR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 11, 12, 0, 0));
        createExpense("TestExpense4", BigDecimal.valueOf(100), Currency.EUR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 11, 17, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-expenses-by-month/2023-11/EUR")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.['2']").value(150.5));
    }

    @Test
    void getSumOfExpensesPerWeek_SecondWeekSumIsZero() throws Exception{
        createExpense("TestExpense1", BigDecimal.valueOf(24), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 2, 0, 0));
        createExpense("TestExpense2", BigDecimal.valueOf(15.5), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 5, 1, 0));
        createExpense("TestExpense3", BigDecimal.valueOf(76), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 16, 0, 0));
        createExpense("TestExpense4", BigDecimal.valueOf(123), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 12, 20, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/week-expenses-by-month/2023-12/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.['2']").value(0));
    }

    @Test
    void getExpenseSumForMonth_AddIncomesAndExpenses() throws Exception{
        createExpense("TestExpense1", BigDecimal.valueOf(120), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 1, 0, 0));
        createExpense("TestExpense2", BigDecimal.valueOf(30), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 7, 1, 0));
        createExpense("TestExpense3", BigDecimal.valueOf(50), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 30, 0, 0));
        createIncome("TestIncome1", BigDecimal.valueOf(35), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 1, 0, 0));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-expenses/2023-10/USD")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.total.sum").value(200));
    }

    @Test
    void getIncomeSumForMonth_DifferentCurrencies() throws Exception{
        createIncome("TestIncome1", BigDecimal.valueOf(100), Currency.USD, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 1, 0, 0));
        createIncome("TestIncome2", BigDecimal.valueOf(150), Currency.EUR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 7, 1, 0));
        createIncome("TestIncome3", BigDecimal.valueOf(50), Currency.RON, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 10, 30, 0, 0));
        BigDecimal expectedValue = BigDecimal.valueOf(100).multiply(currencyService.getExchange(Currency.USD, Currency.RON))
                .add(BigDecimal.valueOf(150).multiply(currencyService.getExchange(Currency.EUR, Currency.RON)))
                .add(BigDecimal.valueOf(50));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-incomes/2023-10/RON")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.total.sum").value(expectedValue.stripTrailingZeros()));
    }

    @Test
    void getExpenseSumForMonth_DifferentCurrencies() throws Exception{
        createExpense("TestExpense1", BigDecimal.valueOf(10), Currency.BOB, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 9, 2, 0, 0));
        createExpense("TestExpense2", BigDecimal.valueOf(20), Currency.ZAR, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 9, 10, 1, 0));
        createExpense("TestExpense3", BigDecimal.valueOf(50), Currency.CUP, BigInteger.valueOf(1),
                LocalDateTime.of(2023, 9, 25, 3, 0));
        BigDecimal expectedValue = BigDecimal.valueOf(10).multiply(currencyService.getExchange(Currency.BOB, Currency.EUR))
                .add(BigDecimal.valueOf(20).multiply(currencyService.getExchange(Currency.ZAR, Currency.EUR)))
                .add(BigDecimal.valueOf(50).multiply(currencyService.getExchange(Currency.CUP, Currency.EUR)));
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/statistics/month-expenses/2023-09/EUR")
                        .header(HttpHeaders.AUTHORIZATION, "Bearer " + authToken)
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(jsonPath("$.total.sum").value(expectedValue.stripTrailingZeros()));
    }
}

