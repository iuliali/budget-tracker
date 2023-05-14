package com.budgettracker.api.split.repositories;

import com.budgettracker.api.split.models.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.Optional;

@Repository
public interface GroupMemberRepository extends JpaRepository<Member, BigInteger > {
    @Query("SELECT m FROM member m WHERE m.user.id= :id")
    Optional<Member> findByUser(BigInteger id);
}
