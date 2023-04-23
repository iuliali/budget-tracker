package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.AuthenticationRequest;
import com.budgettracker.api.dtos.NewUserDto;
import com.budgettracker.api.dtos.ResendConfirmationTokenRequest;
import com.budgettracker.api.services.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
@Tag(name = "Auth Controller", description = "Create an account, confirm email and authenticate.")
public class AuthController {
    private final UserService userService;
    @Operation(summary = "Register a new user.")
    @PostMapping("/register")
    public ResponseEntity<?> register (@Valid @RequestBody NewUserDto newUserDto) {
        return ResponseEntity.ok(Map.of("message", userService.createUser(newUserDto)));

    }

    @Operation(summary = "Confirm email in order to enable an account.")
    @GetMapping(value = "/confirm")
    public ResponseEntity<?> confirmEmail(@RequestParam("token") String token) {
        return ResponseEntity.ok(Map.of("message",userService.confirmToken(token)));
    }

    @Operation(summary = "Resend confirmation link on email.")
    @PostMapping(value = "/resend-confirmation-token")
    public ResponseEntity<?> resendConfirmationToken(@RequestBody ResendConfirmationTokenRequest confirmationTokenRequest) {
        return ResponseEntity.ok(Map.of("message",userService.resendConfirmationToken(confirmationTokenRequest)));
    }

    @Operation(summary = "Authenticate in account.")
    @PostMapping(value = "/authenticate")
    public ResponseEntity<?> authenticate(@RequestBody AuthenticationRequest authRequest) {
        return ResponseEntity.ok(Map.of("access_token",userService.authenticate(authRequest)));
    }
}
