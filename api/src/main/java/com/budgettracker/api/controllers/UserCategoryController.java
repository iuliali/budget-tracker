package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.NewUserCategoryDto;
import com.budgettracker.api.services.UserCategoryService;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.Collections;

@RestController
@RequestMapping("/api/v1/categories")
@RequiredArgsConstructor
@Secured({"ADMIN", "USER"})
public class UserCategoryController {
    private final UserCategoryService userCategoryService;

    @PostMapping("/create")
    public ResponseEntity<?> createCategory(@Valid @RequestBody NewUserCategoryDto newUserCategoryDto,
                                            HttpServletRequest request) {

        return ResponseEntity.ok(userCategoryService.createUserCategory(newUserCategoryDto, request));
    }


}
