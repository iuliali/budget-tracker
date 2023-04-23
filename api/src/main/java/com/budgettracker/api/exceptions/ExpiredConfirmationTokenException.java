package com.budgettracker.api.exceptions;

import java.lang.reflect.Type;

public class ExpiredConfirmationTokenException extends RuntimeException {
    private static final String MESSAGE = " Confirmation token is expired !";
    public ExpiredConfirmationTokenException() {
        super(MESSAGE);
    }
}
