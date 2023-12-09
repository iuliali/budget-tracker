package com.budgettracker.api.budgeting.unit.controllers;

import com.budgettracker.api.budgeting.controllers.UserCategoryController;
import com.budgettracker.api.budgeting.dtos.NewUserCategoryDto;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.math.BigInteger;
import java.util.Collections;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

class UserCategoryControllerTest {
    @Mock
    private UserCategoryService userCategoryService;

    @InjectMocks
    private UserCategoryController userCategoryController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void createCategory_ValidDto_ReturnsOkResponse() {
        NewUserCategoryDto newUserCategoryDto = new NewUserCategoryDto();
        when(userCategoryService.createUserCategory(any(NewUserCategoryDto.class))).thenReturn("Category created successfully");

        ResponseEntity<?> response = userCategoryController.createCategory(newUserCategoryDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Category created successfully"), response.getBody());
        verify(userCategoryService, times(1)).createUserCategory(newUserCategoryDto);
    }

    @Test
    void getAllCategories_ReturnsOkResponse() {
        when(userCategoryService.getUserCategories()).thenReturn(Collections.emptyList());

        ResponseEntity<?> response = userCategoryController.getAllCategories();

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("categories", Collections.emptyList()), response.getBody());
        verify(userCategoryService, times(1)).getUserCategories();
    }

    @Test
    void updateCategory_ValidIdAndDto_ReturnsOkResponse() {
        BigInteger categoryId = BigInteger.valueOf(123);
        NewUserCategoryDto newUserCategoryDto = new NewUserCategoryDto();
        when(userCategoryService.updateUserCategory(eq(categoryId), any(NewUserCategoryDto.class)))
                .thenReturn("Category updated successfully");

        ResponseEntity<?> response = userCategoryController.updateCategory(categoryId, newUserCategoryDto);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Category updated successfully"), response.getBody());
        verify(userCategoryService, times(1)).updateUserCategory(categoryId, newUserCategoryDto);
    }

    @Test
    void deleteCategory_ValidId_ReturnsOkResponse() {
        BigInteger categoryId = BigInteger.valueOf(123);
        when(userCategoryService.deleteUserCategory(eq(categoryId))).thenReturn("Category deleted successfully");

        ResponseEntity<?> response = userCategoryController.deleteCategory(categoryId);

        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals(Collections.singletonMap("message", "Category deleted successfully"), response.getBody());
        verify(userCategoryService, times(1)).deleteUserCategory(categoryId);
    }
}