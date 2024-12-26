# Graph Traversal Algorithms in Dart

This repository demonstrates two fundamental graph traversal algorithms: Breadth-First Search (BFS) and Depth-First Search (DFS) implemented in Dart.

## Graphs: A Powerful Data Structure

Graphs are a fundamental data structure used to represent relationships between entities. They consist of vertices (nodes) that hold data and edges (connections) that link these vertices. Graphs excel at modeling a wide range of real-world scenarios, such as social networks, transportation systems, and computer networks.

There are two primary ways to represent graphs in code: adjacency lists and adjacency matrices.

*   **Adjacency List:** Each vertex has a list containing its neighboring vertices. This representation is often more space-efficient for sparse graphs (fewer edges than vertices).
*   **Adjacency Matrix:** A two-dimensional array where each row and column represent a vertex. The value at a specific position indicates the existence of an edge between those vertices. This approach can be faster for dense graphs (many edges) but consumes more memory.

## Files

### `30_Breadth_First_Search.dart`

This file implements the Breadth-First Search (BFS) algorithm using both adjacency list and adjacency matrix representations. BFS is an iterative algorithm that explores the graph level by level. Starting from a source node, it visits all its neighbors, then the neighbors of those neighbors, and so on. It uses a queue data structure to keep track of the nodes to visit.

This file contains the following functions:

*   `bfs(Map<int, List<int>> graph, int startNode)`: Performs BFS using an adjacency list.
*   `bfsMatrix(List<List<int>> graph, int startNode)`: Performs BFS using an adjacency matrix.
*   `main()`: Contains example graph representations (both adjacency list and matrix) and demonstrates the usage of the BFS functions.

### `31_Depth_First_Search.dart`

This file implements the Depth-First Search (DFS) algorithm using an adjacency list representation. DFS is a recursive algorithm that explores the graph by going as deep as possible along each branch before backtracking. It uses a stack (implicitly through recursion) to keep track of the nodes to visit.

This file contains the following functions:

*   `dfs(Map<int, List<int>> graph, int node, List<bool> visited)`: Performs DFS recursively.
*   `main()`: Contains an example graph representation (adjacency list) and demonstrates the usage of the DFS function.

## Notes

*   The provided code assumes an undirected graph (edges have no direction). You can modify the code to work with directed graphs by making appropriate adjustments to the adjacency list/matrix representation and the traversal logic.
*   These implementations demonstrate basic graph traversal. More complex scenarios often involve additional data structures and logic, such as weighted edges, shortest path calculations (Dijkstra's algorithm, Bellman-Ford), or cycle detection.
*   The `visited` list in both BFS and DFS is crucial to prevent infinite loops in graphs with cycles.

## Thank You

Thank you for your interest in this graph traversal code! Feel free to use and adapt it for your specific needs. If you have any questions or suggestions, please don't hesitate to contribute to this repository.
