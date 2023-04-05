package com.budgettracker.api.controllers;

import com.budgettracker.api.dtos.AuthenticationRequest;
import com.budgettracker.api.dtos.NewUserDto;
import com.budgettracker.api.services.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthController {
    private final UserService userService;

    @PostMapping("/register")
    public ResponseEntity<?> register (@Valid @RequestBody NewUserDto newUserDto,
                                       BindingResult bindingResult) {
        if ( bindingResult.hasErrors()) {
            return ResponseEntity.badRequest()
                    .body(bindingResult.getAllErrors());
        }
        return ResponseEntity.ok(userService.createUser(newUserDto));

    }
    @GetMapping("/confirm")
    public String confirmEmail(@RequestParam("token") String token) {
        return userService.confirmToken(token);
    }


    @PostMapping("/authenticate")
    public ResponseEntity<?> authenticate(@RequestBody AuthenticationRequest authRequest) {
        return ResponseEntity.ok(userService.authenticate(authRequest));
    }
}
