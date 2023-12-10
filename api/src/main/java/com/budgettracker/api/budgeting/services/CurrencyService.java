package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.budgeting.enums.Currency;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CurrencyService {
    public Map<Currency, String> getCurrencies() {
        List<Currency> currencies = List.of(Currency.values());
        return currencies.stream().collect(Collectors.toMap(c->c, Currency::getName));
    }
}
