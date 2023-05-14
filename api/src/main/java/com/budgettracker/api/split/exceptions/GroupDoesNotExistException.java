package com.budgettracker.api.split.exceptions;

import com.budgettracker.api.auth.exceptions.EntityDoesNotExistException;

import java.lang.reflect.Type;

public class GroupDoesNotExistException extends EntityDoesNotExistException {
    private static final String MESSAGE = "Group does not exist!";
    public GroupDoesNotExistException(Type issuedInClass) {
        super(MESSAGE, issuedInClass);
    }
}
