package com.budgettracker.api.budgeting.repositories;

import com.budgettracker.api.budgeting.models.Income;
import com.budgettracker.api.auth.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface IncomeRepository extends JpaRepository<Income, BigInteger> {
    @Override
    Optional<Income> findById(BigInteger id);

    @Query("SELECT inc FROM income inc, userCategory uc WHERE inc.userCategory.id = uc.id AND uc.user = :user")
    Optional<List<Income>> findIncomesByUser(User user);

    @Query("SELECT inc FROM income inc, userCategory uc WHERE inc.userCategory.id = :id AND inc.userCategory.id = uc.id AND uc.user = :user")
    Optional<List<Income>> findIncomesByCategoryForUser(User user, BigInteger id);

    @Query("SELECT SUM(expe.amount) FROM expense expe WHERE expe.userCategory.id = :userCategoryId AND expe.registeredAt >= :startDate AND expe.registeredAt <= :endDate")
    Optional<BigDecimal> incomesSSumByUserCategoryBetweenDates(BigInteger userCategoryId, LocalDateTime startDate, LocalDateTime endDate);
}
