package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.Debt;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;

@Repository
public interface DebtRepository extends JpaRepository<Debt, BigInteger> {

    @Query("SELECT d FROM debt d WHERE d.groupExpense.id =:groupExpenseId")
    List<Debt> getDebtsByGroupExpense(BigInteger groupExpenseId);
}
