package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.services.UserCategoryService;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.security.SecurityScheme;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/categories")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
public class UserCategoryController {
    private final UserCategoryService userCategoryService;

    @PostMapping("/create")
    @Operation(summary = "Create a new category for the logged in user")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewUserCategoryDto newUserCategoryDto) {
        return ResponseEntity.ok(Map.of("message", userCategoryService.createUserCategory(newUserCategoryDto)));
    }

    @GetMapping("/all")
    @Operation(summary = "Get all the categories owned by the user currently logged in")
    public ResponseEntity<?> getAllCategories() {
        return ResponseEntity.ok(Map.of("categories", userCategoryService.getUserCategories()));
    }

    @PutMapping("/update/{id}")
    @Operation(summary = "Update a category owned by current user")
    public ResponseEntity<?> updateCategory(@PathVariable("id") BigInteger id,
                                            @Valid @RequestBody NewUserCategoryDto newUserCategoryDto) {
        return ResponseEntity.ok(Map.of("message", userCategoryService.updateUserCategory(id, newUserCategoryDto)));
    }

    @DeleteMapping("/delete/{id}")
    @Operation(summary = "Delete a category owned by current user")
    public ResponseEntity<?> deleteCategory(@PathVariable("id") BigInteger id) {
        return ResponseEntity.ok(Map.of("message", userCategoryService.deleteUserCategory(id)));
    }


}
