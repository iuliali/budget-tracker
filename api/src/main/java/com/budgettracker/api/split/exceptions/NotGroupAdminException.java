package com.budgettracker.api.split.exceptions;

public class NotGroupAdminException extends RuntimeException{
    private static final String MESSAGE = "Only group admins can add new members !";
    public NotGroupAdminException() {
        super(MESSAGE);
    }
}
