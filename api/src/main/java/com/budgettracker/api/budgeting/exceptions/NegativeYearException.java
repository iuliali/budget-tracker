package com.budgettracker.api.budgeting.exceptions;

public class NegativeYearException extends RuntimeException{
    private static final String MESSAGE = "Negative year";
    public NegativeYearException(){
        super(MESSAGE);
    }
}
