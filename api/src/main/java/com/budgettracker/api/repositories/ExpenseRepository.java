package com.budgettracker.api.repositories;

import com.budgettracker.api.models.Expense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense, BigInteger> {
    @Override
    Optional<Expense> findById(BigInteger id);
}
