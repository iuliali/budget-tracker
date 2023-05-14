package com.budgettracker.api.split.algorithm;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SimplifyDebts {
    private static final long OFFSET = 1000000000L;
    private static Set<Long> visitedEdges;


    private static void createGraphForDebts(List<BigInteger> users, List<SplitTransaction> transacions) {
        int n = users.size();
        Dinics solver = new Dinics(n, users);
        solver = addAllTransactions(solver, transacions);

        System.out.println();
        System.out.println("Simplifying Debts...");
        System.out.println("--------------------");
        System.out.println();

        //  Map to keep track of visited edges
        visitedEdges = new HashSet<>();
        Integer edgePos;

        while((edgePos = getNonVisitedEdge(solver.getEdges())) != null) {
            //  Force recomputation of subsequent flows in the graph
            solver.recompute();
            //  Set source and sink in the flow graph
            Dinics.Edge firstEdge = solver.getEdges().get(edgePos);
            solver.setSource(firstEdge.from);
            solver.setSink(firstEdge.to);
            //  Initialize the residual graph to be same as the given graph
            List<Dinics.Edge>[] residualGraph = solver.getGraph();
            List<Dinics.Edge> newEdges = new ArrayList<>();

            for(List<Dinics.Edge> allEdges : residualGraph) {
                for(Dinics.Edge edge : allEdges) {
                    long remainingFlow = ((edge.flow < 0) ? edge.capacity : (edge.capacity - edge.flow));
                    //  If there is capacity remaining in the graph, then add the remaining capacity as an edge
                    //  so that it can be used for optimizing other debts within the graph
                    if(remainingFlow > 0) {
                        newEdges.add(new Dinics.Edge(edge.from, edge.to, remainingFlow));
                    }
                }
            }

            //  Get the maximum flow between the source and sink
            long maxFlow = solver.getMaxFlow();
            //  Mark the edge from source to sink as visited
            int source = solver.getSource();
            int sink = solver.getSink();
            visitedEdges.add(getHashKeyForEdge(source, sink));
            //  Create a new graph
            solver = new Dinics(n, users);
            //  Add edges having remaining capacity
            solver.addEdges(newEdges);
            //  Add an edge from source to sink in the new graph with obtained maximum flow as it's weight
            solver.addEdge(source, sink, maxFlow);
        }
        //  Print the edges in the graph
        solver.printEdges();
        System.out.println();
    }

    private static Dinics addAllTransactions(Dinics solver, List<SplitTransaction> transactions) {
        for (SplitTransaction t: transactions) {
            solver.addEdge(t.getFrom(), t.getTo(), t.getCapacity());
        }
        return solver;
    }


    private static Integer getNonVisitedEdge(List<Dinics.Edge> edges) {
        Integer edgePos = null;
        int curEdge = 0;
        for(Dinics.Edge edge : edges) {
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
