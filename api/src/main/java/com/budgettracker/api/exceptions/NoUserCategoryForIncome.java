package com.budgettracker.api.exceptions;

public class NoUserCategoryForIncome extends RuntimeException{
    private static final String MESSAGE = "UserCategory for income doesn't exist";
    public NoUserCategoryForIncome(){
        super(MESSAGE);
    }
}
