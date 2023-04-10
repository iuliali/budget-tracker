package com.budgettracker.api.email;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.AllArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class EmailService implements EmailSender {
    private final JavaMailSender mailSender;
    private static final Logger LOGGER = LoggerFactory.getLogger(EmailService.class);
    @Async
    @Override
    public void send(String to, String email) {
        try {
            MimeMessage mimeMessage= mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
            helper.setText(email, true);
            helper.setTo(to);
            helper.setSubject("Budget-Tracker - Confirm your email address");
            helper.setFrom("official@budget-tracker.com");

            mailSender.send(mimeMessage);

        } catch( MessagingException exception) {
            LOGGER.error("Failed to send email :", exception);
            throw new IllegalStateException("failed to send email");

        }
    }
}
