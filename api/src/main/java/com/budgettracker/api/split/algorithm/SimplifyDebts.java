package com.budgettracker.api.split.algorithm;

import java.math.BigInteger;
import java.util.*;

public class SimplifyDebts {
    private static final long OFFSET = 1000000000L;
    private static Set<Long> visitedEdges;

    private SimplifyDebts() {

    }
    private static List<SplitTransaction> simplifyTransactions(List<SplitTransaction> transactions) {
        List<SplitTransaction>  toDelete = new ArrayList<>();
        List<SplitTransaction> toAdd = new ArrayList<>();
        for(SplitTransaction transaction : transactions) {
            if (toDelete.contains(transaction)) continue;
            List<SplitTransaction> sameTransaction = transactions.stream()
                    .filter(splitTransaction -> Objects.equals(splitTransaction.to, transaction.to)
                            && Objects.equals(splitTransaction.from, transaction.from)
                    && transaction != splitTransaction)
                    .toList();
            long total = transaction.capacity;
            for( SplitTransaction same: sameTransaction) {
                total += same.capacity;
                toDelete.add(transaction);
            }
            toAdd.add(new SplitTransaction(transaction.from, transaction.to, total));
        }
        List<SplitTransaction> newTransactions = new ArrayList<>(
                transactions.stream()
                        .filter(splitTransaction -> !toDelete.contains(splitTransaction))
                        .filter(splitTransaction -> splitTransaction.capacity > 0)
                        .toList());
        newTransactions.addAll(toAdd);
        return newTransactions;
    }

    public static List<SplitResult> createGraphForDebts(List<BigInteger> users,
                                                        List<SplitTransaction> transactions) {
        int n = users.size();
        Dinics solver = new Dinics(n, users);
        addAllTransactions(solver, transactions);
        System.out.println(solver.vertexLabels);
        List<NetworkFlowSolverBase.Edge> result = new ArrayList<>();


        visitedEdges = new HashSet<>();
        Integer edgePos;

        while((edgePos = getNonVisitedEdge(solver.getEdges())) != null) {
            solver.recompute();
            Dinics.Edge firstEdge = solver.getEdges().get(edgePos);

            solver.setSource(firstEdge.from);
            solver.setSink(firstEdge.to);
            System.out.println("cURRENT eDGE:"+ firstEdge);
            List<Dinics.Edge>[] residualGraph = solver.getGraph();
            List<Dinics.Edge> newEdges = new ArrayList<>();

            for(List<Dinics.Edge> allEdges : residualGraph) {
                for(Dinics.Edge edge : allEdges) {
                    long remainingFlow = ((edge.flow < 0) ? edge.capacity : (edge.capacity - edge.flow));

                    if(remainingFlow > 0) {
                        newEdges.add(new Dinics.Edge(edge.from, edge.to, remainingFlow));
                    }
                }
            }


            long maxFlow = solver.getMaxFlow();
            System.out.println("maxflow>:" + maxFlow);
            int source = solver.getSource();
            int sink = solver.getSink();
            visitedEdges.add(getHashKeyForEdge(source, sink));

            solver = new Dinics(n, users);
            result.addAll(newEdges);
            solver.addEdges(newEdges);
            solver.addEdge(source, sink, maxFlow);
            System.out.println(newEdges);
        }
        System.out.println(result);
        return solver.returnEdges();
    }

    private static void addAllTransactions(Dinics solver, List<SplitTransaction> transactions) {
        for (SplitTransaction t: transactions) {
            solver.addEdge(solver.vertexLabels.indexOf(t.getFrom()),
                    solver.vertexLabels.indexOf(t.getTo()), t.getCapacity());
        }
    }


    private static Integer getNonVisitedEdge(List<Dinics.Edge> edges) {
        Integer edgePos = null;
        int curEdge = 0;
        for(NetworkFlowSolverBase.Edge edge : edges) {
            if(!visitedEdges.contains(getHashKeyForEdge(edge.from, edge.to))) {
                edgePos = curEdge;
            }
            curEdge++;
        }
        return edgePos;
    }

    private static Long getHashKeyForEdge(int u, int v) {
        return u * OFFSET + v;
    }
}
