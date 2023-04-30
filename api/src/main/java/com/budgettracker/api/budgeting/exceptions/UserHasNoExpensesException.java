package com.budgettracker.api.exceptions;

public class UserHasNoExpensesException extends RuntimeException{
    private static final String MESSAGE = "User has no expenses.";
    public UserHasNoExpensesException(){
        super(MESSAGE);
    }
}
