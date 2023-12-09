package com.budgettracker.api.auth.utils;

import java.util.regex.Pattern;

public class Utils {
    public static boolean patternMatches(String emailAddress, String regexPattern) {
        return Pattern.compile(regexPattern)
                .matcher(emailAddress)
                .matches();
    }
}
