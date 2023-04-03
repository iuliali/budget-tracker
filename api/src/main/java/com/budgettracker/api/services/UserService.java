package com.budgettracker.api.services;

import com.budgettracker.api.dtos.AuthenticationRequest;
import com.budgettracker.api.dtos.CustomDetailsUser;
import com.budgettracker.api.dtos.NewUserDto;
import com.budgettracker.api.dtos.UserDto;
import com.budgettracker.api.exceptions.UserDoesNotExistException;
import com.budgettracker.api.models.User;
import com.budgettracker.api.repositories.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    private final AuthenticationManager authenticationManager;

    private JWTService jwtService;

    public UserDto createUser(NewUserDto newUserDto) {
            var user = NewUserDto.toUser(newUserDto);
        user.setPassword(passwordEncoder.encode(newUserDto.getPassword()));
        user = userRepository.save(user);
        return new UserDto(user);
    }

    public String authenticate(AuthenticationRequest authenticationRequest) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.getUsername(),
                        authenticationRequest.getPassword()
                )
        );
        var user = userRepository.findByUsername(
                authenticationRequest.getUsername()
        ).orElseThrow();
        return jwtService.generateToken(Map.of(
                        "firstName", user.getFirstName(),
                        "lastName", user.getLastName(),
                        "role", user.getRole()),
                new CustomDetailsUser(user)
        );
    }

    public UserDto findById(BigInteger id) {
        return userRepository.findById(id)
                .map(UserDto::new)
                .orElseThrow();
    }

    public User getUserFromHeader(HttpServletRequest request) {
        var authorizationHeader = request.getHeader("Authorization");
        var token = authorizationHeader.substring(7);
        var username = jwtService.extractUsername(token);
        User user = userRepository.findByUsername(username).orElseThrow(
                () -> new UserDoesNotExistException(UserService.class)
        );
        return user;
    }
}
