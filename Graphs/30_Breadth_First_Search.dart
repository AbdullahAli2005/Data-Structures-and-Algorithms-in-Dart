import 'dart:collection';

// BFS function using adjacency list
void bfs(Map<int, List<int>> graph, int startNode) {
  List<bool> visited = List.filled(graph.length, false); // Array to track visited nodes
  Queue<int> queue = Queue<int>(); // Queue for BFS traversal

  // Mark the starting node as visited and enqueue it
  visited[startNode] = true;
  queue.add(startNode);

  print("BFS Traversal:");
  while (queue.isNotEmpty) {
    int currentNode = queue.removeFirst(); // Dequeue a node
    print(currentNode); 

    // Enqueue all unvisited neighbors
    for (int neighbor in graph[currentNode]!) {
      if (!visited[neighbor]) {
        visited[neighbor] = true; // Mark as visited
        queue.add(neighbor); // Add to queue
      }
    }
  }
}

// BFS function using adjacency matrix (optional replacement)
void bfsMatrix(List<List<int>> graph, int startNode) {
  int n = graph.length;
  List<bool> visited = List.filled(n, false); // Array to track visited nodes
  Queue<int> queue = Queue<int>(); // Queue for BFS traversal

  // Mark the starting node as visited and enqueue it
  visited[startNode] = true;
  queue.add(startNode);

  print("BFS Traversal (using matrix):");
  while (queue.isNotEmpty) {
    int currentNode = queue.removeFirst(); // Dequeue a node
    print(currentNode);

    // Visit all unvisited adjacent nodes
    for (int i = 0; i < n; i++) {
      if (graph[currentNode][i] == 1 && !visited[i]) { // Check adjacency and visited status
        visited[i] = true; // Mark as visited
        queue.add(i); // Add to queue
      }
    }
  }
}

void main() {
  // Example graph represented as an adjacency list
  // 0 - 1 - 2
  // |   |
  // 3   4
  Map<int, List<int>> graph = {
    0: [1, 3],   // Connections for node 0
    1: [0, 2, 4], // Connections for node 1
    2: [1],       // Connections for node 2
    3: [0],       // Connections for node 3
    4: [1]        // Connections for node 4
  };

  // Example graph represented as an adjacency matrix
  // 0 - 1 - 2
  // |   |
  // 3   4
  List<List<int>> graphMatrix = [
    [0, 1, 0, 1, 0],  // Node 0
    [1, 0, 1, 0, 1],  // Node 1
    [0, 1, 0, 0, 0],  // Node 2
    [1, 0, 0, 0, 0],  // Node 3
    [0, 1, 0, 0, 0]   // Node 4
  ];

  int startNode = 0; // Starting node for BFS

  bfs(graph, startNode);        // BFS with adjacency list
  // bfsMatrix(graphMatrix, startNode); // BFS with adjacency matrix
}
