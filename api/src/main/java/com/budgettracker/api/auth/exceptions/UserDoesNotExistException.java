package com.budgettracker.api.exceptions;

import java.lang.reflect.Type;

public class UserDoesNotExistException extends EntityDoesNotExistException {
    private static final String MESSAGE = " User does not exist !";
    public UserDoesNotExistException(Type issuedInClass) {
        super(MESSAGE, issuedInClass);
    }
}
