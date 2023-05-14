package com.budgettracker.api.split.exceptions;

import java.lang.reflect.Type;

public class NotGroupAdminException extends RuntimeException{
    private static final String MESSAGE = "Only group admins can add new members !";
    public NotGroupAdminException() {
        super(MESSAGE);
    }
}
