package com.budgettracker.api.auth.exceptions;

public class CurrencyDoesNotExistException extends RuntimeException{
    private static final String MESSAGE = "This currency does not exist in the database!";
    public CurrencyDoesNotExistException() {super(MESSAGE);}
}
