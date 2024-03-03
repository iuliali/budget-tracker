package com.budgettracker.api.budgeting.services;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.exceptions.ExchangeAPIFailedException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.annotation.PostConstruct;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CurrencyService {
    private CurrencyExchangeCache currencyExchangeCache;
    @PostConstruct
    void initCache() {
        this.currencyExchangeCache = new CurrencyExchangeCache();
    }

    public Map<Currency, String> getCurrencies() {
        List<Currency> currencies = List.of(Currency.values());
        return currencies.stream().collect(Collectors.toMap(c->c, Currency::getName));
    }

    public BigDecimal getExchange(Currency from, Currency to) {
        return currencyExchangeCache.getExchange(from, to);
    }
}

// ---------------------- LOCAL CACHE CLASSES ------------------------

@Setter
@Getter
class CurrencyCache {
    private final Currency currency;
    private long expiresAt; // unix time
    private Map exchange;
    private final String EXCHANGE_API_FORMAT = "https://open.er-api.com/v6/latest/%s";
    private final String RESULT = "result";
    private final String SUCCESS = "success";
    private final String RATES = "rates";
    private final String NEXT_UPDATE_TIME = "time_next_update_unix";

    CurrencyCache(Currency currency) {
        this.currency = currency;
        this.exchange = new HashMap();
        this.expiresAt = -1;
    }

    boolean needsUpdate() {
        return exchange.isEmpty() || expiresAt > System.currentTimeMillis() / 1000L;
    }

    void updateCache() {
        ObjectMapper objectMapper = new ObjectMapper();
        RestTemplate restTemplate = new RestTemplate();

        var result = restTemplate.getForObject(String.format(EXCHANGE_API_FORMAT, currency), JsonNode.class);

        if (result != null && Objects.equals(result.get(RESULT).asText(), SUCCESS)) {
            var rates = result.get(RATES);
            exchange = objectMapper.convertValue(rates, Map.class);
            expiresAt = objectMapper.convertValue(result.get(NEXT_UPDATE_TIME), Long.class);
        } else {
            throw new ExchangeAPIFailedException();
        }
    }
    BigDecimal getExchangeTo(Currency to) {
        if (needsUpdate()) {
            updateCache();
        }
        var exchangeValue = exchange.get(String.valueOf(to));
        double exchangeValueDouble;
        if (exchangeValue.getClass() == Integer.class) {
            exchangeValueDouble = ((Integer) exchangeValue).doubleValue();
        } else if (exchangeValue.getClass() == Double.class) {
            exchangeValueDouble = (Double) exchangeValue;
        } else {
            throw new ExchangeAPIFailedException();
        }
        return BigDecimal.valueOf(exchangeValueDouble);
    }
}

@Setter
@Getter
class CurrencyExchangeCache {
    private Map<Currency, CurrencyCache> exchangeCache;

    CurrencyExchangeCache() {
        this.exchangeCache = new HashMap<>();
    }

    boolean hasCachedCurrencyExchange(Currency from) {
        return exchangeCache.containsKey(from);
    }

    BigDecimal getExchange(Currency from, Currency to) {
        if (!hasCachedCurrencyExchange(from)) {
            exchangeCache.put(from, new CurrencyCache(from));
        }
        CurrencyCache cache =  exchangeCache.get(from);
        return cache.getExchangeTo(to);
    }

}
