package com.budgettracker.api.repositories;

import com.budgettracker.api.models.User;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, BigInteger> {

    @Override
    Optional<User> findById(BigInteger Id);
    Optional<User> findByUsername(String username);

    @Transactional
    @Modifying
    @Query("UPDATE user a SET a.enabled = TRUE WHERE a.email =:email")
    void enableUser(String email);
}
