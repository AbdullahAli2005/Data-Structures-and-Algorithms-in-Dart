class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;

  BinaryTree(this.root);

  // Pre-Order Traversal (Root -> Left -> Right)
  void preOrderTraversal(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderTraversal(node.left);
      preOrderTraversal(node.right);
    }
  }

  // In-Order Traversal (Left -> Root -> Right)
  void inOrderTraversal(Node? node) {
    if (node != null) {
      inOrderTraversal(node.left);
      print(node.data);
      inOrderTraversal(node.right);
    }
  }

  // Post-Order Traversal (Left -> Right -> Root)
  void postOrderTraversal(Node? node) {
    if (node != null) {
      postOrderTraversal(node.left);
      postOrderTraversal(node.right);
      print(node.data);
    }
  }
}

void main() {
  Node root = Node(10);
  Node node1 = Node(12);
  Node node2 = Node(6);
  Node node3 = Node(7);
  Node node4 = Node(24);
  // The tree looks like this:
  //      10
  //     / \
  //    12   6
  //   / \
  //  7   24

  root.left = node1;
  root.right = node2;
  node1.left = node3;
  node1.right = node4;

  BinaryTree tree = BinaryTree(root);

  print("\nPre-order Traversal:");
  tree.preOrderTraversal(tree.root);

  print("In-order Traversal:");
  tree.inOrderTraversal(tree.root);

  print("\nPost-order Traversal:");
  tree.postOrderTraversal(tree.root);
}
