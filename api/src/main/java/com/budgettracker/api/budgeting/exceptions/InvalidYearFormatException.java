package com.budgettracker.api.budgeting.exceptions;

public class InvalidYearFormatException extends RuntimeException{
    private static final String MESSAGE = "Invalid year format";
    public InvalidYearFormatException(){
        super(MESSAGE);
    }
}
