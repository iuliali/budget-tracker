package com.budgettracker.api.split.models;

import com.budgettracker.api.budgeting.models.Expense;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.lang.NonNull;

import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
@Entity(name="groupExpense")
@Table(name="group_expense")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class GroupExpense {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @NonNull
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="expense_id", referencedColumnName = "id")
    private Expense expense;

    @NonNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="group_id", referencedColumnName = "id")
    private Group group;

    @OneToMany(mappedBy = "groupExpense", fetch = FetchType.LAZY)
    private List<Debt> debts;

    public GroupExpense(Expense expense, Group group, List<Debt> debts) {
        this.expense = expense;
        this.group = group;
        this.debts = debts;
    }
}
