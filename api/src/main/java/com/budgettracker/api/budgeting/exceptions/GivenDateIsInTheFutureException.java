package com.budgettracker.api.budgeting.exceptions;

public class GivenDateIsInTheFutureException extends RuntimeException{
    private final static String MESSAGE = "Given date is in the future";
    public GivenDateIsInTheFutureException(){
        super(MESSAGE);
    }
}
