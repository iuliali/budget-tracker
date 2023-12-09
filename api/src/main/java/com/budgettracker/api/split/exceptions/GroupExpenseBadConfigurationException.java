package com.budgettracker.api.split.exceptions;

public class GroupExpenseBadConfigurationException extends RuntimeException {
    private static final String MESSAGE = "Group expense is wrongly configured!";
    public GroupExpenseBadConfigurationException() {
        super(MESSAGE);
    }
}
