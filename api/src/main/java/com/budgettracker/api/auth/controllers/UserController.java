package com.budgettracker.api.controllers;

import com.budgettracker.api.services.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/v1/user")
@RequiredArgsConstructor
@Tag(name = "User Controller", description = "Get user details.")
@Secured({"ADMIN", "USER"})
public class UserController {
    private final UserService userService;
    @Operation(summary = "Get authenticated user details")
    @GetMapping(value = "/details")
    public ResponseEntity<?> confirmEmail() {
        return ResponseEntity.ok(userService.getAuthenticatedUserDetails());
    }

}
