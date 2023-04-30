package com.budgettracker.api.filters;

import com.budgettracker.api.repositories.UserRepository;
import com.budgettracker.api.services.JWTService;
import com.budgettracker.api.dtos.CustomDetailsUser;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

@Component
@RequiredArgsConstructor
public class JWTAuthorizationFilter extends OncePerRequestFilter {
    private final JWTService jwtService;
    private final UserRepository userRepository;
    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        var authorizationHeader = request.getHeader("Authorization");

        if (authorizationHeader== null || !authorizationHeader.contains("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        var token = authorizationHeader.substring(7);
        var username = jwtService.extractUsername(token);

        if (username!= null
                && SecurityContextHolder.getContext().getAuthentication() == null){
            var user = userRepository.findByUsername(username).orElseThrow();
            var userDetails = new CustomDetailsUser(user);
            var isTokenValid = jwtService.isTokenValid(token, userDetails);

            if (isTokenValid) {
                UsernamePasswordAuthenticationToken authenticationToken =
                        new UsernamePasswordAuthenticationToken(
                                userDetails,
                                null,
                                userDetails.getAuthorities()
                        );
                authenticationToken.setDetails(
                        new WebAuthenticationDetailsSource().buildDetails(request));
                SecurityContextHolder.getContext().setAuthentication(authenticationToken);

            }

        }
        filterChain.doFilter(request, response);
    }
}
