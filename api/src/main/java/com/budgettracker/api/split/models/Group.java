package com.budgettracker.api.split.models;

import com.budgettracker.api.auth.models.User;
import com.budgettracker.api.budgeting.models.UserCategory;
import jakarta.persistence.*;
import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@Entity(name="splitGroup")
@Table(name="split_groups")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Group {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;
    @Column(nullable = false, unique = true)
    @Size(min = 5, max = 15)
    @NotBlank
    @Pattern(regexp = "^[a-zA-Z0-9]*$")
    private String groupName;

    @NonNull
    @ManyToOne(fetch = FetchType.EAGER)
    private User admin;

    @OneToMany(mappedBy = "id", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private List<Member> members;
}
