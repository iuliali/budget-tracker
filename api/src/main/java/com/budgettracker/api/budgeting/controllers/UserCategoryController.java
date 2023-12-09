package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.dtos.NewUserCategoryDto;
import com.budgettracker.api.budgeting.services.UserCategoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.Map;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/api/v1/categories")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
@Tag(name = "User Category Controller", description = "Create, update and delete user categories.")
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
