package com.budgettracker.api.budgeting.exceptions;

public class InvalidMonthNumberException extends RuntimeException{
    private static final String MESSAGE = "Invalid month number";
    public InvalidMonthNumberException(){
        super(MESSAGE);
    }
}
