void dfs(Map<int, List<int>> graph, int node, List<bool> visited) {
  // Mark the current node as visited
  visited[node] = true;
  print(node); // Print the current node

  // Recursively visit all unvisited neighbors
  for (int neighbor in graph[node]!) {
    if (!visited[neighbor]) {
      dfs(graph, neighbor, visited);
    }
  }
}

void main() {
  // Example graph represented as an adjacency list
  // Graph:
  // 0 - 1 - 2
  // |   |
  // 3   4
  Map<int, List<int>> graph = {
    0: [1, 3],     // Connections for node 0
    1: [0, 2, 4],  // Connections for node 1
    2: [1],        // Connections for node 2
    3: [0],        // Connections for node 3
    4: [1]         // Connections for node 4
  };

  int n = graph.length; 
  List<bool> visited = List.filled(n, false); // Array to track visited nodes

  int startNode = 0; // Starting node for DFS

  print("DFS Traversal:");
  dfs(graph, startNode, visited);
}
