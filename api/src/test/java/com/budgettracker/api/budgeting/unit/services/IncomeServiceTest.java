package com.budgettracker.api.budgeting.unit.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.IncomeDto;
import com.budgettracker.api.budgeting.dtos.NewIncomeDto;
import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.IncomeNotFoundException;
import com.budgettracker.api.budgeting.exceptions.NoUserCategoryForIncomeException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoIncomesException;
import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.IncomeRepository;
import com.budgettracker.api.budgeting.services.IncomeService;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class IncomeServiceTest {
    @Mock
    private IncomeRepository incomeRepository;

    @Mock
    private UserCategoryService userCategoryService;

    @Mock
    private UserService userService;

    @Mock
    private AuthenticationFacade authenticationFacade;

    @InjectMocks
    private IncomeService incomeService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    void testGetIncomeById() {
        BigInteger incomeId = BigInteger.valueOf(1);
        Income expectedIncome = new Income();
        expectedIncome.setId(incomeId);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.of(expectedIncome));

        Income actualIncome = incomeService.getIncomeById(incomeId);

        assertEquals(expectedIncome, actualIncome);
        verify(incomeRepository, times(1)).findById(incomeId);
    }

    @Test
    void testGetIncomeById_NotFound() {
        BigInteger incomeId = BigInteger.valueOf(1);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.empty());

        assertThrows(IncomeNotFoundException.class, () -> incomeService.getIncomeById(incomeId));
        verify(incomeRepository, times(1)).findById(incomeId);
    }

    @Test
    void testCreateIncome() {
        NewIncomeDto newIncomeDto = new NewIncomeDto();
        newIncomeDto.setFrom("Source");
        newIncomeDto.setAmount(BigDecimal.valueOf(100.0));
        newIncomeDto.setCurrency(Currency.valueOf("USD"));
        newIncomeDto.setUserCategoryId(BigInteger.valueOf(1));

        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));

        when(userCategoryService.getUserCategoryIfExists(newIncomeDto.getUserCategoryId()))
                .thenReturn(Optional.of(userCategory));

        String expectedMessage = "Income has been added successfully";

        String actualMessage = incomeService.createIncome(newIncomeDto);

        assertEquals(expectedMessage, actualMessage);
        verify(incomeRepository, times(1)).save(any(Income.class));
    }

    @Test
    void testGetIncomes() {
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        List<Income> incomes = new ArrayList<>();
        Income income = new Income();
        income.setUserCategory(new UserCategory());
        incomes.add(income);
        when(incomeRepository.findIncomesByUser(user)).thenReturn(Optional.of(incomes));
        List<IncomeDto> result = incomeService.getIncomes();
        assertNotNull(result);
        assertEquals(1, result.size());
    }

    @Test
    void testGetIncomes_NoIncomesFound() {

        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        when(incomeRepository.findIncomesByUser(user)).thenReturn(Optional.empty());
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        assertThrows(UserHasNoIncomesException.class, () -> incomeService.getIncomes());
        verify(authenticationFacade, times(1)).getAuthentication();
        verify(userService, times(1)).getUserByUsername("testUser");
        verify(incomeRepository, times(1)).findIncomesByUser(user);
    }

    @Test
    void testGetIncomesByCategory() {
        BigInteger categoryId = BigInteger.valueOf(1);
        UserCategory userCategory = new UserCategory();
        List<Income> expectedIncomes = new ArrayList<>();
        expectedIncomes.add(new Income());
        expectedIncomes.add(new Income());

        when(userCategoryService.getUserCategoryIfExists(categoryId)).thenReturn(Optional.of(userCategory));
        when(incomeRepository.findIncomesByCategoryForUser(userCategory.getUser(), categoryId))
                .thenReturn(Optional.of(expectedIncomes));

        List<IncomeDto> actualIncomes = incomeService.getIncomesByCategory(categoryId);

        assertEquals(expectedIncomes.size(), actualIncomes.size());
        verify(incomeRepository, times(1)).findIncomesByCategoryForUser(userCategory.getUser(), categoryId);
    }

    @Test
    void testGetIncomesByCategory_NoUserCategoryFound() {
        BigInteger categoryId = BigInteger.valueOf(1);

        when(userCategoryService.getUserCategoryIfExists(categoryId)).thenReturn(Optional.empty());

        assertThrows(NoUserCategoryForIncomeException.class, () -> incomeService.getIncomesByCategory(categoryId));
        verify(userCategoryService, times(1)).getUserCategoryIfExists(categoryId);
    }

    @Test
    void testGetIncomesByCategory_NoIncomesFound() {
        BigInteger categoryId = BigInteger.valueOf(1);
        UserCategory userCategory = new UserCategory();

        when(userCategoryService.getUserCategoryIfExists(categoryId)).thenReturn(Optional.of(userCategory));
        when(incomeRepository.findIncomesByCategoryForUser(userCategory.getUser(), categoryId))
                .thenReturn(Optional.empty());

        assertThrows(UserHasNoIncomesException.class, () -> incomeService.getIncomesByCategory(categoryId));
        verify(incomeRepository, times(1)).findIncomesByCategoryForUser(userCategory.getUser(), categoryId);
    }

    @Test
    void testUpdateIncome() {
        BigInteger incomeId = BigInteger.valueOf(1);
        NewIncomeDto newIncomeDto = new NewIncomeDto();
        newIncomeDto.setFrom("Updated Source");
        newIncomeDto.setAmount(BigDecimal.valueOf(200.0));
        newIncomeDto.setCurrency(Currency.valueOf("EUR"));
        newIncomeDto.setUserCategoryId(BigInteger.valueOf(2));

        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(2));

        Income income = new Income();
        income.setId(incomeId);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.of(income));
        when(userCategoryService.getUserCategoryIfExists(newIncomeDto.getUserCategoryId()))
                .thenReturn(Optional.of(userCategory));

        String expectedMessage = "Income has been updated successfully";

        String actualMessage = incomeService.updateIncome(incomeId, newIncomeDto);

        assertEquals(expectedMessage, actualMessage);
        assertEquals(newIncomeDto.getFrom(), income.getFrom());
        assertEquals(newIncomeDto.getAmount(), income.getAmount());
        assertEquals(newIncomeDto.getCurrency(), income.getCurrency());
        assertEquals(userCategory, income.getUserCategory());
        verify(incomeRepository, times(1)).findById(incomeId);
        verify(incomeRepository, times(1)).save(income);
    }

    @Test
    void testUpdateIncome_IncomeNotFound() {
        BigInteger incomeId = BigInteger.valueOf(1);
        NewIncomeDto newIncomeDto = new NewIncomeDto();

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.empty());

        assertThrows(IncomeNotFoundException.class, () -> incomeService.updateIncome(incomeId, newIncomeDto));
        verify(incomeRepository, times(1)).findById(incomeId);
    }

    @Test
    void testDeleteIncome() {
        BigInteger incomeId = BigInteger.valueOf(1);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));
        Income income = new Income();
        income.setId(incomeId);
        income.setUserCategory(userCategory);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.of(income));
        when(userCategoryService.getUserCategoryIfExists(userCategory.getId()))
                .thenReturn(Optional.of(userCategory));

        String expectedMessage = "Income has been deleted successfully";

        String actualMessage = incomeService.deleteIncome(incomeId);

        assertEquals(expectedMessage, actualMessage);
        verify(incomeRepository, times(1)).findById(incomeId);
        verify(incomeRepository, times(1)).deleteById(incomeId);
    }

    @Test
    void testDeleteIncome_IncomeNotFound() {
        BigInteger incomeId = BigInteger.valueOf(1);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.empty());

        assertThrows(IncomeNotFoundException.class, () -> incomeService.deleteIncome(incomeId));
        verify(incomeRepository, times(1)).findById(incomeId);
    }

    @Test
    void testDeleteIncome_NoUserCategoryFound() {
        BigInteger incomeId = BigInteger.valueOf(1);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(BigInteger.valueOf(1));
        Income income = new Income();
        income.setId(incomeId);
        income.setUserCategory(userCategory);

        when(incomeRepository.findById(incomeId)).thenReturn(Optional.of(income));
        when(userCategoryService.getUserCategoryIfExists(userCategory.getId())).thenReturn(Optional.empty());

        assertThrows(NoUserCategoryForIncomeException.class, () -> incomeService.deleteIncome(incomeId));
        verify(incomeRepository, times(1)).findById(incomeId);
        verify(userCategoryService, times(1)).getUserCategoryIfExists(userCategory.getId());
    }
}
