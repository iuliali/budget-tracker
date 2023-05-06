package com.budgettracker.api.auth.exceptions;

public class EmailAlreadyVerifiedException extends RuntimeException {
    private static final String MESSAGE = "User already confirmed account by email.";
    public EmailAlreadyVerifiedException() {
        super(MESSAGE);
    }
}
