package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.services.UserCategoryService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/categories")
@RequiredArgsConstructor
public class UserCategoryController {
    private final UserCategoryService userCategoryService;

    @PostMapping("/create")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewUserCategoryDto newUserCategoryDto,
    BindingResult bindingResult) {
        if ( bindingResult.hasErrors()) {
            return ResponseEntity.badRequest()
                    .body(bindingResult.getAllErrors());
        }
        return ResponseEntity.ok(userCategoryService.createUserCategory(newUserCategoryDto));
    }
}
