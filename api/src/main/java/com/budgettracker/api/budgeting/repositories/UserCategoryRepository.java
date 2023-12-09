package com.budgettracker.api.budgeting.repositories;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Calendar;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserCategoryRepository extends JpaRepository<UserCategory, BigInteger> {
    @Query("SELECT uc FROM userCategory uc WHERE uc.name = :name AND uc.deletedAt IS NULL and uc.user = :user")
    Optional<UserCategory> findActiveByName(String name, User user);
    @Query("SELECT uc FROM userCategory uc WHERE uc.user = :user AND uc.deletedAt IS NULL")
    Optional<List<UserCategory>> findActiveByUser(User user);
    @Override
    Optional<UserCategory> findById(BigInteger id);

    @Transactional
    @Modifying
    @Query("UPDATE userCategory uc SET uc.deletedAt = CURRENT_TIMESTAMP WHERE uc.id = :id AND uc.user = :user")
    void deleteById(BigInteger id, User user);

    @Query("SELECT uc FROM userCategory uc WHERE uc.name=:name AND uc.user.id =:userId AND uc.deletedAt IS NULL")
    Optional<UserCategory> findByNameAndUserId(String name, BigInteger userId);
}
