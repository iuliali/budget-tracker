package com.budgettracker.api.budgeting.exceptions;

public class UserHasNoIncomesException extends RuntimeException{
    private static final String MESSAGE = "User has no incomes.";
    public UserHasNoIncomesException(){
        super(MESSAGE);
    }
}
