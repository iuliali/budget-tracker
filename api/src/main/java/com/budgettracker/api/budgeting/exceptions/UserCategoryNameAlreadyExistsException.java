package com.budgettracker.api.exceptions;

public class UserCategoryNameAlreadyExistsException extends RuntimeException{
    private static final String MESSAGE = "Active category with the same name already exists";
    public UserCategoryNameAlreadyExistsException() {
        super(MESSAGE);
    }
}
