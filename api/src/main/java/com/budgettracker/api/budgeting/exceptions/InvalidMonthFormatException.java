package com.budgettracker.api.budgeting.exceptions;

public class InvalidMonthFormatException extends RuntimeException{
    private static final String MESSAGE = "Invalid month format. Please provide a month in the format YYYY-MM";
    public InvalidMonthFormatException(){
        super(MESSAGE);
    }
}
