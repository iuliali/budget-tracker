package com.budgettracker.api.budget.exceptions;

public class ActiveBudgetAlreadyExistsException extends RuntimeException{
    private static final String MESSAGE = "There is already an active budget for this category";
    public ActiveBudgetAlreadyExistsException() {
        super(MESSAGE);
    }

}
