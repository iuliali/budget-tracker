package com.budgettracker.api.controllers;


import com.budgettracker.api.budget.exceptions.ActiveBudgetAlreadyExistsException;
import com.budgettracker.api.budget.exceptions.BudgetNotFoundException;
import com.budgettracker.api.exceptions.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Map;

@ControllerAdvice
public class ExceptionHandlerController extends ResponseEntityExceptionHandler {

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

    // ==================== CATEGORIES EXCEPTIONS ====================
    @ExceptionHandler(value = {CategoryIsDeletedException.class})
    public ResponseEntity<?> handleBadRequest(CategoryIsDeletedException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "This category is deleted. You can't perform this action on a deleted category."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {CategoryNotFoundException.class})
    public ResponseEntity<?> handleBadRequest(CategoryNotFoundException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "This category doesn't exist."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {UserCategoryNameAlreadyExistsException.class})
    public ResponseEntity<?> handleBadRequest(UserCategoryNameAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You already have an active category with this name."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {UserHasNoActiveCategoriesException.class})
    public ResponseEntity<?> handleBadRequest(UserHasNoActiveCategoriesException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You don't have any active categories."),
                HttpStatus.BAD_REQUEST);
    }


    // ==================== BUDGET EXCEPTIONS ====================

    @ExceptionHandler(value = {BudgetNotFoundException.class})
    public ResponseEntity<?> handleBadRequest(BudgetNotFoundException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "This budget doesn't exist."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {ActiveBudgetAlreadyExistsException.class})
    public ResponseEntity<?> handleBadRequest(ActiveBudgetAlreadyExistsException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You already have an active budget."),
                HttpStatus.BAD_REQUEST);
    }

    // ==================== INCOMES EXCEPTIONS ====================
    @ExceptionHandler(value = {IncomeNotFoundException.class})
    public ResponseEntity<?> handleBadRequest(IncomeNotFoundException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "This income doesn't exist."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {UserHasNoIncomesException.class})
    public ResponseEntity<?> handleBadRequest(UserHasNoIncomesException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You have no incomes."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {NoUserCategoryForIncomeException.class})
    public ResponseEntity<?> handleBadRequest(NoUserCategoryForIncomeException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You don't have this category."),
                HttpStatus.BAD_REQUEST);
    }

    // ==================== EXPENSES EXCEPTIONS ====================
    @ExceptionHandler(value = {ExpenseNotFoundException.class})
    public ResponseEntity<?> handleBadRequest(ExpenseNotFoundException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "This expense doesn't exist."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {UserHasNoExpensesException.class})
    public ResponseEntity<?> handleBadRequest(UserHasNoExpensesException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You have no expenses."),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {NoUserCategoryForExpenseException.class})
    public ResponseEntity<?> handleBadRequest(NoUserCategoryForExpenseException exception,
                                              WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of("message", "You don't have this category."),
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
