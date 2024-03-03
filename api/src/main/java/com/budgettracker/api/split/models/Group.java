package com.budgettracker.api.split.models;

import com.budgettracker.api.auth.models.User;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
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
    @NotBlank(message = "Group name is required")
    @Pattern(regexp = "^[a-zA-Z0-9]*$", message = "Group name must be alphanumeric")
    private String groupName;

    @NotNull(message = "Admin is required")
    @ManyToOne(fetch = FetchType.EAGER)
    private User admin;

    @OneToMany(mappedBy = "group", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    private List<Member> members;
}
