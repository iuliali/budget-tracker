package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.Debt;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface DebtRepository extends JpaRepository<Debt, BigInteger> {
}
