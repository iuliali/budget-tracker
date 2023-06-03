package com.budgettracker.api.budgeting.unit.services;

import com.budgettracker.api.auth.auth_facade.AuthenticationFacade;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.dtos.NewUserCategoryDto;
import com.budgettracker.api.budgeting.dtos.UserCategoryDto;
import com.budgettracker.api.budgeting.exceptions.CategoryNotFoundException;
import com.budgettracker.api.budgeting.exceptions.UserCategoryNameAlreadyExistsException;
import com.budgettracker.api.budgeting.exceptions.UserHasNoActiveCategoriesException;
import com.budgettracker.api.budgeting.models.UserCategory;
import com.budgettracker.api.budgeting.repositories.UserCategoryRepository;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

class UserCategoryServiceTest {
    @Mock
    private UserCategoryRepository userCategoryRepository;

    @Mock
    private UserService userService;

    @Mock
    private AuthenticationFacade authenticationFacade;

    @InjectMocks
    private UserCategoryService userCategoryService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void getUserCategoryIfExists_ExistingCategory_ReturnsOptionalWithCategory() {
        BigInteger categoryId = BigInteger.valueOf(123);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(categoryId);
        userCategory.setUser(user);
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.of(userCategory));
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);

        Optional<UserCategory> result = userCategoryService.getUserCategoryIfExists(categoryId);

        assertTrue(result.isPresent());
        assertEquals(categoryId, result.get().getId());
        assertEquals(user, result.get().getUser());
    }

    @Test
    void getUserCategoryIfExists_NonExistingCategory_ReturnsEmptyOptional() {
        BigInteger categoryId = BigInteger.valueOf(123);
        when(userService.getUserByUsername(anyString())).thenReturn(new User());
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.of(new UserCategory()));
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);

        Optional<UserCategory> result = userCategoryService.getUserCategoryIfExists(categoryId);

        assertTrue(result.isEmpty());
    }

    @Test
    void createUserCategory_ValidDto_ReturnsSuccessMessage() {
        NewUserCategoryDto userCategoryDto = new NewUserCategoryDto();
        userCategoryDto.setName("Test Category");
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        when(userCategoryRepository.findActiveByName(eq("Test Category"), eq(user))).thenReturn(Optional.empty());

        String result = userCategoryService.createUserCategory(userCategoryDto);

        assertEquals("Category has been created successfully", result);
        verify(userCategoryRepository, times(1)).save(any(UserCategory.class));
    }

    @Test
    void createUserCategory_CategoryWithSameNameExists_ThrowsUserCategoryNameAlreadyExistsException() {
        NewUserCategoryDto userCategoryDto = new NewUserCategoryDto();
        userCategoryDto.setName("Test Category");
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        when(userCategoryRepository.findActiveByName(eq("Test Category"), eq(user))).thenReturn(Optional.of(new UserCategory()));

        assertThrows(UserCategoryNameAlreadyExistsException.class, () -> userCategoryService.createUserCategory(userCategoryDto));
        verify(userCategoryRepository, never()).save(any(UserCategory.class));
    }

    @Test
    void getUserCategories_UserHasActiveCategories_ReturnsListOfUserCategoryDtos() {
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        List<UserCategory> userCategories = new ArrayList<>();
        userCategories.add(new UserCategory());
        when(userCategoryRepository.findActiveByUser(user)).thenReturn(Optional.of(userCategories));
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);

        List<UserCategoryDto> result = userCategoryService.getUserCategories();

        assertEquals(1, result.size());
        verify(userCategoryRepository, times(1)).findActiveByUser(user);
    }

    @Test
    void getUserCategories_UserHasNoActiveCategories_ThrowsUserHasNoActiveCategoriesException() {
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        when(userCategoryRepository.findActiveByUser(user)).thenReturn(Optional.empty());
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);

        assertThrows(UserHasNoActiveCategoriesException.class, () -> userCategoryService.getUserCategories());
        verify(userCategoryRepository, times(1)).findActiveByUser(user);
    }

    @Test
    void updateUserCategory_ValidIdAndDto_ReturnsSuccessMessage() {
        BigInteger categoryId = BigInteger.valueOf(123);
        NewUserCategoryDto userCategoryDto = new NewUserCategoryDto();
        userCategoryDto.setName("Updated Category");
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(categoryId);
        userCategory.setUser(user);
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.of(userCategory));
        when(userCategoryRepository.findActiveByName(eq("Updated Category"), eq(user))).thenReturn(Optional.empty());

        String result = userCategoryService.updateUserCategory(categoryId, userCategoryDto);

        assertEquals("Category has been updated successfully", result);
        assertEquals("Updated Category", userCategory.getName());
        verify(userCategoryRepository, times(1)).save(userCategory);
    }

    @Test
    void updateUserCategory_CategoryWithSameNameExists_ThrowsUserCategoryNameAlreadyExistsException() {
        BigInteger categoryId = BigInteger.valueOf(123);
        NewUserCategoryDto userCategoryDto = new NewUserCategoryDto();
        userCategoryDto.setName("Test Category");
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(categoryId);
        userCategory.setUser(user);
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.of(userCategory));
        when(userCategoryRepository.findActiveByName(eq("Test Category"), eq(user))).thenReturn(Optional.of(new UserCategory()));

        assertThrows(UserCategoryNameAlreadyExistsException.class, () -> userCategoryService.updateUserCategory(categoryId, userCategoryDto));
        verify(userCategoryRepository, never()).save(userCategory);
    }

    @Test
    void deleteUserCategory_ValidId_ReturnsSuccessMessage() {
        BigInteger categoryId = BigInteger.valueOf(123);
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        User user = new User();
        user.setUsername("testUser");
        when(userService.getUserByUsername("testUser")).thenReturn(user);
        UserCategory userCategory = new UserCategory();
        userCategory.setId(categoryId);
        userCategory.setUser(user);
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.of(userCategory));

        String result = userCategoryService.deleteUserCategory(categoryId);

        assertEquals("Category has been deleted successfully", result);
        verify(userCategoryRepository, times(1)).deleteById(categoryId, user);
    }

    @Test
    void deleteUserCategory_NonExistingCategory_ThrowsCategoryNotFoundException() {
        BigInteger categoryId = BigInteger.valueOf(123);
        Authentication authentication = new UsernamePasswordAuthenticationToken("testUser", null);
        when(authenticationFacade.getAuthentication()).thenReturn(authentication);
        when(userService.getUserByUsername("testUser")).thenReturn(new User());
        when(userCategoryRepository.findById(categoryId)).thenReturn(Optional.empty());

        assertThrows(CategoryNotFoundException.class, () -> userCategoryService.deleteUserCategory(categoryId));
        verify(userCategoryRepository, never()).deleteById(any(BigInteger.class), any(User.class));
    }
}