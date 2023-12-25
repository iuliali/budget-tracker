package com.budgettracker.api.split.models;

import com.budgettracker.api.auth.models.User;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigInteger;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity(name="member")
@Table(name="members")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id", referencedColumnName = "id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="group_id", referencedColumnName = "id")
    private Group group;

    @NotNull(message = "Admin is required")
    private boolean isAdmin = false;

    @NotNull(message = "Member since (entry date) is required")
    private LocalDateTime memberSince;

    public static Member toMember(User user, Group group, boolean admin) {
        var newMember = new Member();
        newMember.setMemberSince(LocalDateTime.now());
        newMember.setUser(user);
        newMember.setAdmin(admin);
        newMember.setGroup(group);
        return newMember;
    }
}
