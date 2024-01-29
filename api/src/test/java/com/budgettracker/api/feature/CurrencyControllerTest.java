package com.budgettracker.api.feature;

import com.budgettracker.api.budgeting.enums.Currency;
import com.budgettracker.api.budgeting.services.CurrencyService;
import org.hamcrest.Matchers;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.math.BigDecimal;
import java.util.Map;

import static org.hamcrest.Matchers.aMapWithSize;
import static org.hamcrest.Matchers.is;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@AutoConfigureMockMvc
@SpringBootTest
@WithMockUser("tomTest123")
public class CurrencyControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private CurrencyService currencyService;

    @Test
    void getAllCurrencies_ReturnsOk() throws Exception {
        when(currencyService.getCurrencies()).thenReturn(Map.of(
                Currency.EUR, "EUR",
                Currency.RON, "RON",
                Currency.USD, "USD"
        ));

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/currencies/all")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$", aMapWithSize(1)))
                .andExpect(jsonPath("$", Matchers.hasKey("currencies")))
                .andExpect(jsonPath("$.currencies", Matchers.is(Map.of(
                        "EUR", "EUR",
                        "RON", "RON",
                        "USD", "USD"
                ))));
    }

    @Test
    @WithMockUser("tomTest123")
    void getExchange_ReturnsOk() throws Exception {
        when(currencyService.getExchange(
                Currency.USD,
                Currency.EUR)).thenReturn(BigDecimal.valueOf(0.85));

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/currencies/exchange/USD/EUR")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.USDEUR", is(0.85)));
    }

    @Test
    void getExchange_InvalidCurrency_ReturnsBadRequest() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/currencies/exchange/INVALID/EUR")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }

    @Test
    void getExchange_MissingParameter_ReturnsBadRequest() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/v1/currencies/exchange/USD")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isNotFound());
    }
}
