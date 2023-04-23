package com.budgettracker.api.controllers;


import com.budgettracker.api.exceptions.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class ExceptionHandlerController extends ResponseEntityExceptionHandler {
    @ExceptionHandler(value = {UsernameAlreadyExistsException.class})
    public ResponseEntity<?> handleBadRequest(UsernameAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>("A user is already registered with this username. ",
                HttpStatus.CONFLICT);
    }

    @ExceptionHandler(value = {EmailAlreadyExistsException.class})
    public ResponseEntity<?> handleBadRequest(EmailAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>(" A user is already registered with this email. Please log in if you already have an account.",
                HttpStatus.CONFLICT);
    }

    @ExceptionHandler(value = {UserDoesNotExistException.class})
    public ResponseEntity<?> handleBadRequest(UserDoesNotExistException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>("Email or username not found. Please try again or register first if you don't have an account yet!",
                HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(value = {AlreadyConfirmedTokenException.class})
    public ResponseEntity<?> handleBadRequest(AlreadyConfirmedTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>("You already used this token in order to confirm your email. You can login into your account now.",
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {ExpiredConfirmationTokenException.class})
    public ResponseEntity<?> handleBadRequest(ExpiredConfirmationTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>("Your confirmation token has expired. You can request another in order to activate your account.",
                HttpStatus.BAD_REQUEST);
    }


    @ExceptionHandler(value = {NonexistentConfirmationTokenException.class})
    public ResponseEntity<?> handleBadRequest(NonexistentConfirmationTokenException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>("Activation account failed due to invalid confirmation token.",
                HttpStatus.BAD_REQUEST);
    }


    @ExceptionHandler(value = {EmailAddressInvalidException.class})
    public ResponseEntity<?> handleBadRequest(EmailAddressInvalidException exception,
                                              WebRequest request) {
        logger.warn(exception.getMessage());
        return new ResponseEntity<>( "Email Address is invalid!",
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {EmailAlreadyVerifiedException.class})
    public ResponseEntity<?> handleBadRequest(EmailAlreadyVerifiedException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>( "You already confirmed your email!",
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {BadCredentialsException.class})
    public ResponseEntity<?> handleBadRequest(BadCredentialsException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>( "Wrong username or password!",
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {Exception.class, Error.class})
    public ResponseEntity<String> handleInternalServerError (Throwable exception, WebRequest request) {

        logger.error(exception.getMessage(), exception);
        return new ResponseEntity<>("Internal Server Error" , HttpStatus.INTERNAL_SERVER_ERROR);
    }



}
