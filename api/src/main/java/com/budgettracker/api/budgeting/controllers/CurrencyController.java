package com.budgettracker.api.budgeting.controllers;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.CurrencyService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/v1/currencies")
@RequiredArgsConstructor
@Tag(name = "Currency Controller", description = "Get all available currencies")
public class CurrencyController {
    private final CurrencyService currencyService;

    @GetMapping("/all")
    @Operation(summary = "Get all currencies")
    public ResponseEntity<?> getAllCurrencies() {
        return ResponseEntity.ok(Map.of("currencies", currencyService.getCurrencies()));
    }

    @GetMapping("/exchange/{from}/{to}")
    @Operation(summary = "Get exhange for one unit of 'from' in 'to' currency")
    public ResponseEntity<?> getExchange(@PathVariable("from") Currency from,
                                         @PathVariable("to") Currency to) {
        String exchange = "%s%s".formatted(from, to);
        return ResponseEntity.ok(Map.of(exchange, currencyService.getExchange(from, to)));
    }
}
