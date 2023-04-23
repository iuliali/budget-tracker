package com.budgettracker.api.repositories;

import com.budgettracker.api.models.User;
import com.budgettracker.api.models.UserCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserCategoryRepository extends JpaRepository<UserCategory, BigInteger> {
    Optional<List<UserCategory>> findByName(String name);
    Optional<List<UserCategory>> findByUser(User user);
    @Override
    Optional<UserCategory> findById(BigInteger id);
}
