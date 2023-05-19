package com.budgettracker.api.auth;

import com.budgettracker.api.controllers.AuthController;
import com.budgettracker.api.dtos.AuthenticationRequest;
import com.budgettracker.api.dtos.NewUserDto;
import com.budgettracker.api.dtos.ResendConfirmationTokenRequest;
import com.budgettracker.api.services.UserService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;
import static org.mockito.MockitoAnnotations.openMocks;

@ExtendWith(MockitoExtension.class)
class AuthControllerTest {

	@Mock
	private UserService userService;

	@InjectMocks
	private AuthController authController;
	@AfterEach
	public void afterEach() {
		verifyNoMoreInteractions(userService);
	}


	@Test
	void testRegister() {
		// Prepare test data
		NewUserDto newUserDto = new NewUserDto();
		newUserDto.setUsername("testuser");
		newUserDto.setPassword("testpass");
		newUserDto.setEmail("test@example.com");
		newUserDto.setFirstName("John");
		newUserDto.setLastName("Doe");

		when(userService.createUser(newUserDto)).thenReturn("Please Confirm Your Email Now!");

		// Perform the test
		ResponseEntity<?> responseEntity = authController.register(newUserDto);

		// Verify the results
		assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
		assertEquals(Map.of("message", "Please Confirm Your Email Now!"), responseEntity.getBody());

		verify(userService, times(1)).createUser(newUserDto);
	}

	@Test
	void testAuthenticate() {
		// Prepare test data
		AuthenticationRequest authRequest = new AuthenticationRequest();
		authRequest.setUsername("testuser");
		authRequest.setPassword("testpass");

		String accessToken = "mockedAccessToken";
		when(userService.authenticate(authRequest)).thenReturn(accessToken);

		// Perform the test
		ResponseEntity<?> responseEntity = authController.authenticate(authRequest);

		// Verify the results
		assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
		assertEquals(Map.of("access_token", accessToken), responseEntity.getBody());

		verify(userService, times(1)).authenticate(authRequest);
	}

	@Test
	void testConfirmEmail() {
		// Prepare test data
		String token = "mockedToken";
		when(userService.confirmToken(token)).thenReturn("Email confirmed successfully");

		// Perform the test
		ResponseEntity<?> responseEntity = authController.confirmEmail(token);

		// Verify the results
		assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
		assertEquals(Map.of("message", "Email confirmed successfully"), responseEntity.getBody());

		verify(userService, times(1)).confirmToken(token);
		verifyNoMoreInteractions(userService);
	}

	@Test
	void testResendConfirmationToken() {
		// Prepare test data
		ResendConfirmationTokenRequest confirmationTokenRequest = new ResendConfirmationTokenRequest();
		confirmationTokenRequest.setEmail("test@example.com");

		when(userService.resendConfirmationToken(confirmationTokenRequest)).thenReturn("Confirmation token resent successfully");

		// Perform the test
		ResponseEntity<?> responseEntity = authController.resendConfirmationToken(confirmationTokenRequest);

		// Verify the results
		assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
		assertEquals(Map.of("message", "Confirmation token resent successfully"), responseEntity.getBody());

		verify(userService, times(1)).resendConfirmationToken(confirmationTokenRequest);
		verifyNoMoreInteractions(userService);
	}



}
