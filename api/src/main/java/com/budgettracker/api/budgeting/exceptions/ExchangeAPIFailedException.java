package com.budgettracker.api.budgeting.exceptions;

public class ExchangeAPIFailedException extends RuntimeException {
    private static final String MESSAGE = "Getting exchange failed!";
    public ExchangeAPIFailedException() {
        super(MESSAGE);
    }
}
