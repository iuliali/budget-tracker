package com.budgettracker.api.exceptions;

public class UserHasNoActiveCategoriesException extends RuntimeException{
    private static final String MESSAGE = "User has no active categories";
    public UserHasNoActiveCategoriesException() {
        super(MESSAGE);
    }
}
