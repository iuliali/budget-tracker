package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.GroupExpense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;

@Repository
public interface GroupExpenseRepository extends JpaRepository<GroupExpense, BigInteger> {
}
