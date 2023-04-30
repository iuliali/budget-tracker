package com.budgettracker.api.budgeting.exceptions;

public class NoUserCategoryForIncomeException extends RuntimeException{
    private static final String MESSAGE = "UserCategory for income doesn't exist";
    public NoUserCategoryForIncomeException(){
        super(MESSAGE);
    }
}
