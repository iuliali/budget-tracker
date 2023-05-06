package com.budgettracker.api.budgeting.exceptions;

public class UserHasNoExpensesException extends RuntimeException{
    private static final String MESSAGE = "User has no expenses.";
    public UserHasNoExpensesException(){
        super(MESSAGE);
    }
}
