package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.GroupExpense;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;

@Repository
public interface GroupExpenseRepository extends JpaRepository<GroupExpense, BigInteger> {
    @Query("SELECT ge FROM groupExpense ge WHERE ge.group.id=:groupId")
    List<GroupExpense> getAllByGroup(BigInteger groupId);
}
