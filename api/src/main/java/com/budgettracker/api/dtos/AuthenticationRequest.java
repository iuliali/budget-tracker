package com.budgettracker.api.dtos;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AuthenticationRequest {
    @Schema(example = "tomTest123")
    private String username;
    @Schema(example = "myPa55Pa55%$$")
    private String password;
}
