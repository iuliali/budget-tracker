package com.budgettracker.api.split.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigDecimal;
import java.math.BigInteger;

@Getter
@Setter
@Entity(name="debt")
@Table(name="debts")
@Builder
@NoArgsConstructor
@AllArgsConstructor
//@Where(clause = "settled=false")
public class Debt {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="group_expense_id", referencedColumnName = "id")
    private GroupExpense groupExpense;

    @NotNull(message = "Amount is required")
    private BigDecimal amount;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="creditor_id", referencedColumnName = "id")
    private Member creditor;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="debtor_id", referencedColumnName = "id")
    private Member debtor;

    //private boolean settled = false;

}
