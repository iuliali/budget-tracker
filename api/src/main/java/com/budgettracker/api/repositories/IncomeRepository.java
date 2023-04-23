package com.budgettracker.api.repositories;

import com.budgettracker.api.models.Income;
import com.budgettracker.api.models.UserCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface IncomeRepository extends JpaRepository<Income, BigInteger> {
    @Override
    Optional<Income> findById(BigInteger id);
}
