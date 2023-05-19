package com.budgettracker.api.split.algorithm;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public abstract class NetworkFlowSolverBase {

    protected static final long INF = Long.MAX_VALUE / 2;

    public static class Edge {
        public int from;
        public int to;
        public Edge residual;
        public long flow;
        public long cost;
        public final long capacity;


        public Edge(BigInteger from, BigInteger to, long capacity) {
            this.from = from.intValue();
            this.to = to.intValue();
            this.capacity = capacity;
        }

        public Edge(int from, int to, long capacity) {
            this.from = from;
            this.to = to;
            this.capacity = capacity;
        }

        public boolean isResidual() {
            return capacity == 0;
        }

        public long remainingCapacity() {
            return capacity - flow;
        }

        public void augment(long bottleNeck) {
            flow += bottleNeck;
            residual.flow -= bottleNeck;
        }

        public String toString() {
//            String u = (from == s) ? "s" : ((from == t) ? "t" : String.valueOf(from));
//            String v = (to == s) ? "s" : ((to == t) ? "t" : String.valueOf(to));
            return String.format(
                    "Edge %s -> %s | flow = %d | capacity = %d | is residual: %s",
                    this.from, this.to, flow, capacity, isResidual());
        }
    }

    protected int n;
    protected int s;
    protected int t;

    protected long maxFlow;

    protected boolean[] minCut;
    protected List<Edge>[] graph;
    protected List<BigInteger> vertexLabels;
    protected List<Edge> edges;
    private int visitedToken = 1;
    private int[] visited;
    protected boolean solved;


    protected NetworkFlowSolverBase(int n, List<BigInteger> vertexLabels) {
        this.n = n;
        initializeGraph();
        assignLabelsToVertices(vertexLabels);
        minCut = new boolean[n];
        visited = new int[n];
        edges = new ArrayList<>();
    }
    private void initializeGraph() {
        graph = new List[n];
        for (int i = 0; i < n; i++) graph[i] = new ArrayList<>();
    }

    private void assignLabelsToVertices(List<BigInteger> vertexLabels) {
        if(vertexLabels.size() != n)
            throw new IllegalArgumentException(String.format("You must pass %s number of labels", n));
        this.vertexLabels = vertexLabels;
    }


    public void addEdges(List<Edge> edges) {
        if (edges == null) throw new IllegalArgumentException("Edges cannot be null");
        for(Edge edge : edges) {
            addEdge(edge.from, edge.to, edge.capacity);
        }
    }


    public void addEdge(int from, int to, long capacity) {
        if (capacity < 0)
            throw new IllegalArgumentException("Capacity < 0");
        Edge e1 = new Edge(from, to, capacity);
        Edge e2 = new Edge(to, from, 0);
        e1.residual = e2;
        e2.residual = e1;
        graph[from].add(e1);
        graph[to].add(e2);
        edges.add(e1);
    }



    public void visit(int i) {
        visited[i] = visitedToken;
    }

    public boolean visited(int i) {
        return visited[i] == visitedToken;
    }


    public void markAllNodesAsUnvisited() {
        visitedToken++;
    }



    public List<Edge>[] getGraph() {
        execute();
        return graph;
    }

    public List<Edge> getEdges() {
        return edges;
    }


    public long getMaxFlow() {
        execute();
        return maxFlow;
    }


    public boolean[] getMinCut() {
        execute();
        return minCut;
    }


    public void setSource(int s) {
        this.s = s;
    }


    public void setSink(int t) {
        this.t = t;
    }


    public int getSource() {
        return s;
    }


    public int getSink() {
        return t;
    }


    public void recompute() {
        solved = false;
    }


    public List<SplitResult> returnEdges() {
       List<Edge>  toDelete = new ArrayList<>();
       List<Edge> toAdd = new ArrayList<>();
        for(Edge edge : edges) {
            List<Edge> reversedEdge = edges.stream()
                    .filter(edge1 -> edge1.to == edge.from && edge1.from ==  edge.to).toList();
            for( Edge opposite: reversedEdge) {
                if (opposite.capacity > edge.capacity) {
                    toAdd.add(new Edge(opposite.from, opposite.to, opposite.capacity - edge.capacity));
                    toDelete.add(edge);
                } else {
                    toAdd.add(new Edge(edge.from, edge.to, edge.capacity - opposite.capacity));
                    toDelete.add(opposite);
                }
            }
        }
        for(Edge edge: toDelete) {
            edges.remove(edge);
        }
        edges.addAll(toAdd);

        return edges.stream()
                .map(edge -> new SplitResult(vertexLabels.get(edge.from), vertexLabels.get(edge.to),  edge.capacity))
                .filter(splitResult -> splitResult.getDebt().compareTo(BigDecimal.valueOf(0.02)) >= 0)
                .toList();
    }

    private void execute() {
        if (solved) return;
        solved = true;
        solve();
    }

    public abstract void solve();
}