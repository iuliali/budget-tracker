package com.budgettracker.api.split.controllers;

import com.budgettracker.api.split.exceptions.GroupDoesNotExistException;
import com.budgettracker.api.split.exceptions.GroupExpenseBadConfigurationException;
import com.budgettracker.api.split.exceptions.NotGroupAdminException;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.Map;

import static com.budgettracker.api.constants.Constants.MESSAGE;

@ControllerAdvice
@Order(1)
public class SplitGroupsExceptionHandlerController extends ResponseEntityExceptionHandler {
    @ExceptionHandler(value = {GroupDoesNotExistException.class})
    public ResponseEntity<?> handleGroupDoesNotExistException(
            GroupDoesNotExistException exception,
            WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of(MESSAGE, "Group does not exist!"),
                HttpStatus.BAD_REQUEST);
    }
    @ExceptionHandler(value = {GroupExpenseBadConfigurationException.class})
    public ResponseEntity<?> handleGroupExpenseBadConfigException(
            GroupExpenseBadConfigurationException exception,
            WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of(MESSAGE, "Bad Configuration for group expense!"),
                HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {NotGroupAdminException.class})
    public ResponseEntity<?> handleGroupDoesNotExistException(
            NotGroupAdminException exception,
            WebRequest request) {
        logger.warn(request + exception.getMessage());
        return new ResponseEntity<>(Map.of(MESSAGE, "Only a group admin can perform this operation!"),
                HttpStatus.BAD_REQUEST);
    }
}
