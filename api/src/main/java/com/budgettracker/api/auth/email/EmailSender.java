package com.budgettracker.api.email;

public interface EmailSender {
    void send(String to, String email);
}
