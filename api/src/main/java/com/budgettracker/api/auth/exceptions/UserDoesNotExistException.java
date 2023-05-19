package com.budgettracker.api.auth.exceptions;

import com.budgettracker.api.auth.exceptions.EntityDoesNotExistException;

import java.lang.reflect.Type;

public class UserDoesNotExistException extends EntityDoesNotExistException {
    private static final String MESSAGE = " User does not exist !";
    public UserDoesNotExistException(Type issuedInClass) {
        super(MESSAGE, issuedInClass);
    }
}
