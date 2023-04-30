package com.budgettracker.api.auth.email;

public interface EmailSender {
    void send(String to, String email);
}
