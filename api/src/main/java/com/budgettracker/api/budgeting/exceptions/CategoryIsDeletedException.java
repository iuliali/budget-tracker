package com.budgettracker.api.budgeting.exceptions;

public class CategoryIsDeletedException extends RuntimeException{
    private static final String MESSAGE = "Category is deleted";
    public CategoryIsDeletedException() {
        super(MESSAGE);
    }
}
