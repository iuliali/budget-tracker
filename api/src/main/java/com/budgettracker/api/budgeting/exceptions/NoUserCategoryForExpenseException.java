package com.budgettracker.api.budgeting.exceptions;

public class NoUserCategoryForExpenseException extends RuntimeException{
    private static final String MESSAGE = "UserCategory for expense doesn't exist";
    public NoUserCategoryForExpenseException(){
        super(MESSAGE);
    }
}
