package com.budgettracker.api.budgeting.exceptions;

public class IncomeNotFoundException extends RuntimeException{
    private static final String MESSAGE = "Income not found";
    public IncomeNotFoundException(){
        super(MESSAGE);
    }
}
