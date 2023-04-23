package com.budgettracker.api.exceptions;

import java.lang.reflect.Type;

public class NonexistentConfirmationTokenException extends EntityDoesNotExistException {
    private static final String MESSAGE = " Confirmation token does not exist !";
    public NonexistentConfirmationTokenException(Type issuedInClass) {
        super(MESSAGE, issuedInClass);
    }
}
