package com.budgettracker.api.auth.controllers;

import com.budgettracker.api.auth.services.UserService;
import com.budgettracker.api.budgeting.enums.Currency;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
//@CrossOrigin(originPatterns = "*", allowedHeaders = "*", methods = {RequestMethod.GET, RequestMethod.PUT})
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

    @Operation(summary = "Get all users")
    @GetMapping(value = "/all")
    public ResponseEntity<?> getAllUsers() {
        return ResponseEntity.ok(userService.getAllUsersDto());
    }

    @Operation(summary= "Update authenticated user's default currency")
    @PatchMapping(value = "/default-currency")
    public ResponseEntity<?> updateDefaultCurrency(@RequestBody Map<String, Currency> currency) {
        return ResponseEntity.ok(userService.updateDefaultCurrency(currency.get("currency")));
    }
}
