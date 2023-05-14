package com.budgettracker.api.auth.controllers;


import com.budgettracker.api.auth.exceptions.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Map;

@ControllerAdvice(basePackages = {"com.budgettracker.api.auth.controllers"})
public class AuthExceptionHandlerController extends ResponseEntityExceptionHandler {

    @ExceptionHandler(value = {UsernameAlreadyExistsException.class})
    public ResponseEntity<?> handleUsernameAlreadyExistsException(UsernameAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "A user is already registered with this username. "),
                HttpStatus.CONFLICT);
    }

    @ExceptionHandler(value = {EmailAlreadyExistsException.class})
    public ResponseEntity<?> handleEmailAlreadyExistsException(EmailAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "A user is already registered with this email. Please log in if you already have an account."),
                HttpStatus.CONFLICT);
    }

    @ExceptionHandler(value = {UserDoesNotExistException.class})
    public ResponseEntity<?> handleUserDoesNotExistException(UserDoesNotExistException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "Email or username not found. Please try again or register first if you don't have an account yet!"),
                HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(value = {AlreadyConfirmedTokenException.class})
    public ResponseEntity<?> handleAlreadyConfirmedTokenException(AlreadyConfirmedTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You already used this token in order to confirm your email. You can login into your account now."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {ExpiredConfirmationTokenException.class})
    public ResponseEntity<?> handleExpiredConfirmationTokenException(ExpiredConfirmationTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "Your confirmation token has expired. You can request another in order to activate your account."),
                HttpStatus.BAD_REQUEST);
    }


    @ExceptionHandler(value = {NonexistentConfirmationTokenException.class})
    public ResponseEntity<?> handleNonexistentConfirmationTokenException(NonexistentConfirmationTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "Activation account failed due to invalid confirmation token."),
                HttpStatus.BAD_REQUEST);
    }


    @ExceptionHandler(value = {EmailAddressInvalidException.class})
    public ResponseEntity<?> handleEmailAddressInvalidException(EmailAddressInvalidException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>( Map.of("message", "Email Address is invalid!"),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {EmailAlreadyVerifiedException.class})
    public ResponseEntity<?> handleEmailAlreadyVerifiedException(EmailAlreadyVerifiedException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>( Map.of("message", "You already confirmed your email!"),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {BadCredentialsException.class,
            InternalAuthenticationServiceException.class})
    public ResponseEntity<?> handleBadCredentialsException(Exception exception,
                                                           WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>( Map.of("message", "Wrong username or password!"),
                HttpStatus.BAD_REQUEST);
    }

    // This catches all other exceptions
    @ExceptionHandler(value = {Exception.class, Error.class})
    public ResponseEntity<?> handleOtherExceptions (Throwable exception,
                                                             WebRequest request) {

        logger.error(exception.getMessage(), exception);
        return new ResponseEntity<>(Map.of("message", "An unexpected exception occurred"), HttpStatus.I_AM_A_TEAPOT);
    }

}