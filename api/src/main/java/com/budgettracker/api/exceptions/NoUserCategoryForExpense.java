package com.budgettracker.api.exceptions;

public class NoUserCategoryForExpense extends RuntimeException{
    private static final String MESSAGE = "UserCategory for expense doesn't exist";
    public NoUserCategoryForExpense(){
        super(MESSAGE);
    }
}
