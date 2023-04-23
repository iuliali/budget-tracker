package com.budgettracker.api.exceptions;

public class EmailAlreadyVerifiedException extends RuntimeException {
    private static final String MESSAGE = "User already confirmed account by email.";
    public EmailAlreadyVerifiedException() {
        super(MESSAGE);
    }
}
