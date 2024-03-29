package com.budgettracker.api.auth.exceptions;

public class UsernameAlreadyExistsException extends RuntimeException {
    private static final String MESSAGE = "A user with this username is already registered!";
    public UsernameAlreadyExistsException() {
        super(MESSAGE);
    }
}
