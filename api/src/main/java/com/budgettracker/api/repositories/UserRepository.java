package com.budgettracker.api.repositories;

import com.budgettracker.api.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, BigInteger> {

    @Override
    Optional<User> findById(BigInteger Id);
    Optional<User> findByUsername(String username);
}
