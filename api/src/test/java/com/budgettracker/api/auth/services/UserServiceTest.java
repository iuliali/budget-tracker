package com.budgettracker.api.auth.services;

import com.budgettracker.api.auth.dtos.NewUserDto;
import com.budgettracker.api.auth.dtos.ResendConfirmationTokenRequest;
import com.budgettracker.api.auth.email.EmailService;
import com.budgettracker.api.auth.exceptions.EmailAddressInvalidException;
import com.budgettracker.api.auth.exceptions.UsernameAlreadyExistsException;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.repositories.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UserServiceTest {


    @Mock
    private UserRepository userRepository;

    @Mock
    private PasswordEncoder passwordEncoder;

    @Mock
    private AuthenticationManager authenticationManager;

    @Mock
    private ConfirmationTokenService confirmationTokenService;

    @Mock
    private JWTService jwtService;

    @Mock
    private EmailService emailService;

    @InjectMocks
    private UserService userService;



    @Test
    void testCreateUser_WhenUsernameExists_ThrowsUsernameAlreadyExistsException() {
        // Arrange
        String existingUsername = "existingUser";
        NewUserDto newUserDto = new NewUserDto();
        newUserDto.setUsername(existingUsername);

        when(userRepository.findByUsername(existingUsername)).thenReturn(Optional.of(new User()));

        // Act & Assert
        assertThrows(UsernameAlreadyExistsException.class, () -> userService.createUser(newUserDto));

        // Verify that the userRepository.findByUsername() method was called
        verify(userRepository).findByUsername(existingUsername);
        // Verify that no other methods were called on the mocks
        verifyNoMoreInteractions(userRepository, emailService, passwordEncoder, confirmationTokenService, jwtService);
    }

    @Test
    void testCreateUser_WhenEmailIsInvalid_ThrowsEmailAddressInvalidException() {
        NewUserDto newUserDto = new NewUserDto();
        newUserDto.setEmail("invalid_email");

        assertThrows(EmailAddressInvalidException.class, () -> userService.createUser(newUserDto));

        verifyNoInteractions( emailService, passwordEncoder, confirmationTokenService, jwtService);
    }

    @Test
    void createUser_WithValidUserDto_ReturnsConfirmationMessage() {
        NewUserDto newUserDto = new NewUserDto("testUser", "password123", "test@example.com", "John", "Doe");

        User savedUser = new User();
        savedUser.setUsername(newUserDto.getUsername());
        savedUser.setEmail(newUserDto.getEmail());
        savedUser.setFirstName(newUserDto.getFirstName());
        savedUser.setLastName(newUserDto.getLastName());

        when(userRepository.findByUsername(newUserDto.getUsername())).thenReturn(Optional.empty());
        when(userRepository.findByEmail(newUserDto.getEmail())).thenReturn(Optional.empty());
        when(userRepository.save(any(User.class))).thenReturn(savedUser);

        String result = userService.createUser(newUserDto);

        assertEquals("Please Confirm Your Email Now!", result);
        verify(userRepository).findByUsername(newUserDto.getUsername());
        verify(userRepository).findByEmail(newUserDto.getEmail());
        verify(userRepository).save(any(User.class));
        verify(emailService).send(eq(newUserDto.getEmail()), anyString());
    }

    @Test
    void resendConfirmationToken_WithExistingEmailAndDisabledUser_SendsNewConfirmationEmail() {
        String email = "test@example.com";
        ResendConfirmationTokenRequest request = new ResendConfirmationTokenRequest(email);

        User user = new User();
        user.setEmail(email);
        user.setEnabled(false);

        when(userRepository.findByEmail(email)).thenReturn(Optional.of(user));

        String result = userService.resendConfirmationToken(request);

        assertEquals("Please Confirm Your Email Now!", result);
        verify(confirmationTokenService).getAndSaveConfirmationToken(user);
        verify(userRepository).findByEmail(email);
        verify(emailService).send(eq(email), anyString());
    }




}
