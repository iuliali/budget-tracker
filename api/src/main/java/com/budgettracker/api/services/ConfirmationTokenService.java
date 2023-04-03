package com.budgettracker.api.services;

import com.budgettracker.api.models.ConfirmationToken;
import com.budgettracker.api.models.User;
import com.budgettracker.api.repositories.ConfirmationTokenRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

@Service
@AllArgsConstructor
public class ConfirmationTokenService {
    private final ConfirmationTokenRepository confirmationTokenRepository;
    public String getConfirmationToken() {
        return UUID.randomUUID().toString();
    }
    public void saveConfirmationToken(ConfirmationToken token) {
        confirmationTokenRepository.save(token);
    }

    public String getAndSaveConfirmationToken(User user) {
        String token = getConfirmationToken();
        ConfirmationToken confirmationToken = new ConfirmationToken(
                token,
                LocalDateTime.now(),
                LocalDateTime.now().plusMinutes(15),
                user
        );
        saveConfirmationToken(confirmationToken);
        System.out.println(confirmationToken.getToken());
        return token;
    }

    public Optional<ConfirmationToken> getToken(String token) {
        return confirmationTokenRepository.findByToken(token);
    }

    public int setConfirmedAt(String token) {
        return confirmationTokenRepository.updateConfirmedAt(
                token, LocalDateTime.now());
    }
}
