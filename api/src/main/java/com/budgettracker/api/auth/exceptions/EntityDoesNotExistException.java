package com.budgettracker.api.auth.exceptions;

import java.lang.reflect.Type;
import java.text.MessageFormat;
import java.time.Instant;


public class EntityDoesNotExistException extends RuntimeException {

    private final Instant issuedAt;
    private final Type issuedInClass;

    public EntityDoesNotExistException(String message,
                                       Type issuedInClass) {
        super(message);
        this.issuedAt = Instant.now();
        this.issuedInClass = issuedInClass;
    }

    @Override
    public String getMessage() {
        return MessageFormat.format(
                "Entity Does Not exist issuedAt: {0} in class {1} with message {2}",
                this.issuedAt,
                this.issuedInClass,
                super.getMessage());
    }
}


