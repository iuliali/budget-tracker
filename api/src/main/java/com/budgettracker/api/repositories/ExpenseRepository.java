package com.budgettracker.api.repositories;

import com.budgettracker.api.models.Expense;
import com.budgettracker.api.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

@Repository
public interface ExpenseRepository extends JpaRepository<Expense, BigInteger> {
    @Override
    Optional<Expense> findById(BigInteger id);

    @Query("SELECT expe FROM expense expe, userCategory uc WHERE expe.userCategory.id = uc.id AND uc.user = :user")
    Optional<List<Expense>> findExpensesByUser(User user);

    @Query("SELECT expe FROM expense expe, userCategory uc WHERE expe.userCategory.id = :id AND expe.userCategory.id = uc.id AND uc.user = :user")
    Optional<List<Expense>> findExpensesByCategoryForUser(User user, BigInteger id);

    @Query("SELECT SUM(expe.amount) FROM expense expe WHERE expe.userCategory.id = :userCategoryId")
    Optional<BigDecimal> expensesSumByUserCategory(BigInteger userCategoryId);
}
