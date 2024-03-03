package com.budgettracker.api.commands;

import com.budgettracker.api.auth.enums.Role;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.repositories.UserRepository;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.models.Expense;
import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.ExpenseRepository;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import com.budgettracker.api.budgeting.repositories.UserCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.shell.standard.ShellComponent;
import org.springframework.shell.standard.ShellMethod;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Random;

@ShellComponent
public class ShellCommands {
    private final UserRepository userRepository;
    private final UserCategoryRepository userCategoryRepository;
    private final ExpenseRepository expenseRepository;
    private final IncomeRepository incomeRepository;
    private final PasswordEncoder passwordEncoder;


    @Autowired
    public ShellCommands(UserRepository userRepository, UserCategoryRepository userCategoryRepository, ExpenseRepository expenseRepository, IncomeRepository incomeRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.userCategoryRepository = userCategoryRepository;
        this.expenseRepository = expenseRepository;
        this.incomeRepository = incomeRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @ShellMethod(key = "create-test-users", value = "Creates users with categories, incomes and expenses set and automatically verifies them")
    public String createUsers(int numberOfUsers) {
        for(int i = 0; i < numberOfUsers; i++) {
            User user = User.builder()
                    .username("testUser" + i)
                    .password(passwordEncoder.encode("testPassword" + i))
                    .email("testEmail" + i + "@test.com")
                    .enabled(true)
                    .firstName("testFirstName" + i)
                    .lastName("testLastName" + i)
                    .defaultCurrency(Currency.RON)
                    .role(Role.USER)
                    .build();
            userRepository.save(user);

            Random random = new Random();
            createCategories(user.getUsername(), user.getPassword(), random.nextInt(5) + 1, random.nextInt(5) + 1);
        }
        return "Users created with categories, incomes and expenses created successfully";
    }

    @ShellMethod(key = "create-categories", value = "Creates a number of categories for a user with random expenses and incomes")
    public String createCategories(String username, String password, int numberOfCategories, int numberOfExpAndInc) {
        Random random = new Random();
        User user = userRepository.findByUsername(username).get();
        for(int i = 0; i < numberOfCategories; i++) {
            UserCategory userCategory = UserCategory.builder()
                    .name("testCategory" + i)
                    .user(user)
                    .build();
            userCategoryRepository.save(userCategory);
            for(int j = 0; j < numberOfExpAndInc; j++) {

                // create a random date between 1st of January 2020 and now
                LocalDateTime start = LocalDateTime.of(2020, 1, 1, 0, 0);
                long days = start.until(LocalDateTime.now(), java.time.temporal.ChronoUnit.DAYS);
                LocalDateTime randomDateExpense = start.plusDays(random.nextInt((int) days + 1));
                LocalDateTime randomDateIncome = start.plusDays(random.nextInt((int) days + 1));

                Expense expense = Expense.builder()
                        .amount(BigDecimal.valueOf(random.nextInt(651) + 50))
                        .to("testTo" + j)
                        .userCategory(userCategory)
                        .currency(Currency.RON)
                        .registeredAt(randomDateExpense)
                        .build();
                expenseRepository.save(expense);
                Income income = Income.builder()
                        .amount(BigDecimal.valueOf(random.nextInt(651) + 50))
                        .from("testFrom" + j)
                        .userCategory(userCategory)
                        .currency(Currency.RON)
                        .registeredAt(randomDateIncome)
                        .build();
                incomeRepository.save(income);
            }
        }
        return "Categories with incomes and expenses created successfully";
    }
}
