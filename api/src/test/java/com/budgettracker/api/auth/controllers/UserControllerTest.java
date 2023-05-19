package com.budgettracker.api.auth.controllers;

import com.budgettracker.api.auth.controllers.UserController;
import com.budgettracker.api.auth.dtos.UserDetailsDto;
import com.budgettracker.api.auth.repositories.UserRepository;
import com.budgettracker.api.auth.services.UserService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.test.context.support.WithMockUser;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class UserControllerTest {
    @Mock
    private UserService userService;
    @InjectMocks
    private UserController userController;

    @AfterEach
    public void afterEach() {
        verifyNoMoreInteractions(userService);
    }


    @Test
    @WithMockUser(username = "testuser", roles = {"USER"})
    void testGetUserDetails() {
        // Prepare test data
        UserDetailsDto userDetailsDto = new UserDetailsDto("testuser", "John", "Doe", "test@example.com");
        when(userService.getAuthenticatedUserDetails()).thenReturn(userDetailsDto);

        // Perform the test
        ResponseEntity<?> responseEntity = userController.getUserDetails();

        // Verify the results
        assertEquals(HttpStatus.OK, responseEntity.getStatusCode());
        assertEquals(userDetailsDto, responseEntity.getBody());

        verify(userService, times(1)).getAuthenticatedUserDetails();
    }
}
