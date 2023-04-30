package com.budgettracker.api.exceptions;

public class ExpenseNotFoundException extends RuntimeException{
    private static final String MESSAGE = "Expense not found";
    public ExpenseNotFoundException(){
        super(MESSAGE);
    }
}
