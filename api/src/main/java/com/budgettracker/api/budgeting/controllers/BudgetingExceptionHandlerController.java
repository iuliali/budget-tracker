package com.budgettracker.api.budgeting.controllers;


import com.budgettracker.api.budgeting.exceptions.ActiveBudgetAlreadyExistsException;
import com.budgettracker.api.budgeting.exceptions.BudgetNotFoundException;
import com.budgettracker.api.budgeting.exceptions.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Map;

@ControllerAdvice(basePackages = {"com.budgettracker.api.budgeting.controllers"})
public class BudgetingExceptionHandlerController extends ResponseEntityExceptionHandler {

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
                HttpStatus.CONFLICT);
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
