package com.budgettracker.api.split.dtos;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.split.models.Group;
import com.budgettracker.api.split.models.Member;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.cfg.BinderHelper;

import java.math.BigDecimal;
import java.math.BigInteger;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {

    private BigInteger id;
    private BigInteger userId;
    private String firstName;

    public MemberDto(Member member) {
        this.id = member.getId();
        this.userId = member.getUser().getId();
        this.firstName = member.getUser().getFirstName();
    }

}
