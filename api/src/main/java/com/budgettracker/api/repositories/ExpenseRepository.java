package com.budgettracker.api.repositories;

import com.budgettracker.api.models.Expense;
import com.budgettracker.api.models.Income;
import com.budgettracker.api.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense, BigInteger> {
    @Override
    Optional<Expense> findById(BigInteger id);

    @Query("SELECT inc FROM expense exp, userCategory uc WHERE exp.userCategory.id = uc.id AND uc.user = :user")
    Optional<List<Expense>> findExpensesByUser(User user);
}
