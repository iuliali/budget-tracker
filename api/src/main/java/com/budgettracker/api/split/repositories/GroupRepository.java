package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.Group;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface GroupRepository extends JpaRepository<Group, BigInteger> {
    @Override
    Optional<Group> findById(BigInteger id);
}
