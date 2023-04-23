package com.budgettracker.api.repositories;

import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserCategoryRepository extends JpaRepository<UserCategory, BigInteger> {
    @Query("SELECT uc FROM userCategory uc WHERE uc.name = :name AND uc.deletedAt IS NULL")
    Optional<UserCategory> findActiveByName(String name);
    @Query("SELECT uc FROM userCategory uc WHERE uc.user = :user AND uc.deletedAt IS NULL")
    Optional<List<UserCategory>> findActiveByUser(User user);
    @Override
    Optional<UserCategory> findById(BigInteger id);

    @Transactional
    @Modifying
    @Query("UPDATE userCategory uc SET uc.deletedAt = CURRENT_TIMESTAMP WHERE uc.id = :id")
    void deleteById(BigInteger id);
}
