package com.budgettracker.api.auth.exceptions;

public class EmailAlreadyExistsException extends RuntimeException {
    private static final String MESSAGE = "A user with this email already is registered!";
    public EmailAlreadyExistsException() {
        super(MESSAGE);
    }
}
