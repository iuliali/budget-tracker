package com.budgettracker.api.exceptions;

import java.lang.reflect.Type;
import java.text.MessageFormat;
import java.time.Instant;

public class AlreadyConfirmedTokenException extends RuntimeException {
    private static final String MESSAGE = " Confirmation token already confirmed!";
    public AlreadyConfirmedTokenException() {
        super(MESSAGE);
    }
}
