package com.budgettracker.api.auth.services;

import com.budgettracker.api.auth.dtos.*;
import com.budgettracker.api.auth.email.EmailService;
import com.budgettracker.api.auth.exceptions.*;
import com.budgettracker.api.auth.models.ConfirmationToken;
import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.auth.repositories.UserRepository;
import com.budgettracker.api.auth.utils.Utils;
import com.budgettracker.api.budgeting.enums.Currency;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    private final AuthenticationManager authenticationManager;
    private final ConfirmationTokenService confirmationTokenService;

    private final JWTService jwtService;
    private final EmailService emailService;

    public String updateDefaultCurrency(Currency currency) {
        User user = getAuthenticatedUser();
        try{
            user.setDefaultCurrency(currency);
            userRepository.save(user);
            return "Default currency updated successfully!";
        } catch (IllegalArgumentException e) {
            throw new CurrencyDoesNotExistException();
        }
    }

    public Currency getDefaultCurrency() {
        User user = getAuthenticatedUser();
        return user.getDefaultCurrency();
    }

    public String createUser(NewUserDto newUserDto) {
        if (userRepository.findByUsername(newUserDto.getUsername()).isPresent()) {
            throw new UsernameAlreadyExistsException();
        }
        if (!Utils.patternMatches(newUserDto.getEmail(),
                "^[A-Za-z0-9+_.-]+@(.+)$")) {
            throw new EmailAddressInvalidException();
        }
        if (userRepository.findByEmail(newUserDto.getEmail()).isPresent()) {
            throw new EmailAlreadyExistsException();
        }
        var user = NewUserDto.toUser(newUserDto);
        user.setPassword(passwordEncoder.encode(newUserDto.getPassword()));
        user = userRepository.save(user);
        sendConfirmationTokenEmail(user);

        return "Please Confirm Your Email Now!";
    }
    private void sendConfirmationTokenEmail(User user) {
        String token = confirmationTokenService.getAndSaveConfirmationToken(user);
        String link = "http://localhost:8081/api/v1/auth/confirm?token=" + token;
        emailService.send(user.getEmail(), buildEmail(user.getFirstName(), link));
    }

    public String resendConfirmationToken(ResendConfirmationTokenRequest confirmationTokenRequest) {
        User user = userRepository.findByEmail(confirmationTokenRequest.getEmail()).orElseThrow(
                () -> new UserDoesNotExistException(UserService.class)
        );
        if (user.isEnabled()) {
            throw new EmailAlreadyVerifiedException();
        }
        sendConfirmationTokenEmail(user);
        return "Please Confirm Your Email Now!";
    }

    public String authenticate(AuthenticationRequest authenticationRequest) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        authenticationRequest.getUsername(),
                        authenticationRequest.getPassword()
                )
        );

        var user = userRepository.findByUsername(
                authenticationRequest.getUsername()
        ).orElseThrow();
        return jwtService.generateToken(Map.of(
                        "firstName", user.getFirstName(),
                        "lastName", user.getLastName(),
                        "role", user.getRole()),
                new CustomDetailsUser(user)
        );
    }

    public UserDto findById(BigInteger id) {
        return userRepository.findById(id)
                .map(UserDto::new)
                .orElseThrow(
                        () -> new UserDoesNotExistException(UserService.class)
                );
    }

    public User findUserById(BigInteger id) {
        return userRepository.findById(id)
                .orElseThrow(
                        () -> new UserDoesNotExistException(UserService.class)
                );
    }

    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username).orElseThrow();
    }

    @Transactional
    public String confirmToken(String token) {

        ConfirmationToken confirmationToken = confirmationTokenService.getToken(token).orElseThrow(
                () -> new NonexistentConfirmationTokenException(UserService.class)
        );

        if(confirmationToken.getConfirmedAt() != null) {
            throw new AlreadyConfirmedTokenException();
        }
        LocalDateTime expireDate = confirmationToken.getExpiresAt();
        if(expireDate.isBefore(LocalDateTime.now())) {
            throw new ExpiredConfirmationTokenException();
        }
        confirmationTokenService.setConfirmedAt(token);
        enableUser(confirmationToken.getUser().getEmail());
        String message = "You've just confirmed your EMAIL!";

        return  message;
    }

    private void enableUser(String email) {
        userRepository.enableUser(email);
    }

    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

    public List<UserDto> getAllUsersDto(){
        return userRepository.findAll().stream().map(UserDto::new).toList();
    }

    private String buildEmail(String name, String link) {
        return "<div style=\"font-family:Helvetica,Arial,sans-serif;font-size:16px;margin:0;color:#0b0c0c\">\n" +
                "\n" +
                "<span style=\"display:none;font-size:1px;color:#fff;max-height:0\"></span>\n" +
                "\n" +
                "  <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;min-width:100%;width:100%!important\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"100%\" height=\"53\" bgcolor=\"#0b0c0c\">\n" +
                "        \n" +
                "        <table role=\"presentation\" width=\"100%\" style=\"border-collapse:collapse;max-width:580px\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\n" +
                "          <tbody><tr>\n" +
                "            <td width=\"70\" bgcolor=\"#0b0c0c\" valign=\"middle\">\n" +
                "                <table role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td style=\"padding-left:10px\">\n" +
                "                  \n" +
                "                    </td>\n" +
                "                    <td style=\"font-size:28px;line-height:1.315789474;Margin-top:4px;padding-left:10px\">\n" +
                "                      <span style=\"font-family:Helvetica,Arial,sans-serif;font-weight:700;color:#ffffff;text-decoration:none;vertical-align:top;display:inline-block\">Confirm your email</span>\n" +
                "                    </td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "              </a>\n" +
                "            </td>\n" +
                "          </tr>\n" +
                "        </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td width=\"10\" height=\"10\" valign=\"middle\"></td>\n" +
                "      <td>\n" +
                "        \n" +
                "                <table role=\"presentation\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse\">\n" +
                "                  <tbody><tr>\n" +
                "                    <td bgcolor=\"#1D70B8\" width=\"100%\" height=\"10\"></td>\n" +
                "                  </tr>\n" +
                "                </tbody></table>\n" +
                "        \n" +
                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\" height=\"10\"></td>\n" +
                "    </tr>\n" +
                "  </tbody></table>\n" +
                "\n" +
                "\n" +
                "\n" +
                "  <table role=\"presentation\" class=\"m_-6186904992287805515content\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-collapse:collapse;max-width:580px;width:100%!important\" width=\"100%\">\n" +
                "    <tbody><tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "      <td style=\"font-family:Helvetica,Arial,sans-serif;font-size:19px;line-height:1.315789474;max-width:560px\">\n" +
                "        \n" +
                "            <p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\">Hi " + name + ",</p><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> Thank you for registering. Please click on the below link to activate your account: </p><blockquote style=\"Margin:0 0 20px 0;border-left:10px solid #b1b4b6;padding:15px 0 0.1px 15px;font-size:19px;line-height:25px\"><p style=\"Margin:0 0 20px 0;font-size:19px;line-height:25px;color:#0b0c0c\"> <a href=\"" + link + "\">Activate Now</a> </p></blockquote>\n Link will expire in 15 minutes. <p>See you soon</p>" +
                "        \n" +
                "      </td>\n" +
                "      <td width=\"10\" valign=\"middle\"><br></td>\n" +
                "    </tr>\n" +
                "    <tr>\n" +
                "      <td height=\"30\"><br></td>\n" +
                "    </tr>\n" +
                "  </tbody></table><div class=\"yj6qo\"></div><div class=\"adL\">\n" +
                "\n" +
                "</div></div>";
    }

    public UserDetailsDto getAuthenticatedUserDetails() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        User user = userRepository.findByUsername(username).orElseThrow(
                () -> new UserDoesNotExistException(UserService.class)
        );
        UserDetailsDto userDetails = new UserDetailsDto(user);
        return userDetails;
    }

    public User getAuthenticatedUser() {
        String username = SecurityContextHolder.getContext().getAuthentication().getName();
        return userRepository.findByUsername(username).orElseThrow(
                () -> new UserDoesNotExistException(UserService.class)
        );
    }
}
