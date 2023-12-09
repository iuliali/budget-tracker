package com.budgettracker.api.auth.exceptions;

import com.budgettracker.api.auth.exceptions.EntityDoesNotExistException;

import java.lang.reflect.Type;

public class NonexistentConfirmationTokenException extends EntityDoesNotExistException {
    private static final String MESSAGE = " Confirmation token does not exist !";
    public NonexistentConfirmationTokenException(Type issuedInClass) {
        super(MESSAGE, issuedInClass);
    }
}
