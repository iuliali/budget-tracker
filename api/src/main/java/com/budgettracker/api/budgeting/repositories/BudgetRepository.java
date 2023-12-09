package com.budgettracker.api.budgeting.repositories;

import com.budgettracker.api.budgeting.models.Budget;
import com.budgettracker.api.budgeting.models.UserCategory;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface BudgetRepository extends JpaRepository<Budget, BigInteger> {
    @Override
    Optional<Budget> findById(BigInteger Id);

    @Query("SELECT b FROM budget b WHERE b.userCategory = :userCategory AND b.deletedAt IS NULL")
    Optional<Budget> findActiveByUserCategory(UserCategory userCategory);

    @Transactional
    @Modifying
    @Query("UPDATE budget b SET b.deletedAt = CURRENT_TIMESTAMP WHERE b.userCategory = :userCategory and b.deletedAt IS NULL")
    void deleteByUserCategoryId(UserCategory userCategory);
}
