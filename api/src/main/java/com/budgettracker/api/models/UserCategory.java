package com.budgettracker.api.models;

import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity(name="userCategory")
@Table(name="userCategories")
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger userCategoryId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(nullable = false)
    @Size(min = 1)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String name;

    private LocalDateTime deletedAt;
}
