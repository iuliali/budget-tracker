package com.budgettracker.api.exceptions;

public class CategoryNotFoundException extends RuntimeException{
    private static final String MESSAGE = "Category not found";
    public CategoryNotFoundException() {
        super(MESSAGE);
    }
}
