package com.budgettracker.api.budgeting.exceptions;

public class BudgetNotFoundException extends RuntimeException{
    private static final String MESSAGE = "Budget not found";
    public BudgetNotFoundException(){
        super(MESSAGE);
    }
}
