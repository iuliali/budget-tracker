package com.budgettracker.api.repositories;

import com.budgettracker.api.models.ConfirmationToken;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.Optional;

@Repository
public interface ConfirmationTokenRepository extends JpaRepository<ConfirmationToken, BigInteger> {

        Optional<ConfirmationToken> findByToken(String token);

        @Transactional
        @Modifying
        @Query("UPDATE confirmation_token c " +
                "SET c.confirmedAt =:confirmedAt " +
                "WHERE c.token =:token")
        int updateConfirmedAt(String token,
                              LocalDateTime confirmedAt);
}
