package com.budgettracker.api.exceptions;

public class EmailAddressInvalidException extends  RuntimeException {
    private static final String MESSAGE = "Email Address is invalid!";
    public EmailAddressInvalidException() {
        super(MESSAGE);
    }
}
