class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BST {
  Node? root;

  // Function to insert a key into the BST
  void insert(int key) {
    root = _insert(root, key);
  }

  Node _insert(Node? node, int key) {
    if (node == null) {
      return Node(key);
    }

    if (key < node.data) {
      node.left = _insert(node.left, key);
    } else if (key > node.data) {
      node.right = _insert(node.right, key);
    } else {
      print("Cannot insert $key, already in BST");
    }

    return node;
  }

  // Function to find the in-order successor
  Node? _inOrderSuccessor(Node? node) {
    Node? current = node;
    while (current?.left != null) {
      current = current!.left;
    }
    return current;
  }

  // Function to delete a node from the BST
  void delete(int key) {
    root = _delete(root, key);
  }

  Node? _delete(Node? node, int key) {
    if (node == null) {
      return null;
    }

    if (key < node.data) {
      node.left = _delete(node.left, key);
    } else if (key > node.data) {
      node.right = _delete(node.right, key);
    } else {
      // Node to be deleted found
      if (node.left == null) {
        return node.right;
      } else if (node.right == null) {
        return node.left;
      }

      // Node with two children: Replace with in-order successor
      Node? temp = _inOrderSuccessor(node.right);
      node.data = temp!.data;
      node.right = _delete(node.right, temp.data);
    }

    return node;
  }

  // In-order traversal function
  void inOrder() {
    _inOrder(root);
    print('');
  }

  void _inOrder(Node? node) {
    if (node != null) {
      _inOrder(node.left);
      print('${node.data} ');
      _inOrder(node.right);
    }
  }
}

void main() {
  BST bst = BST();

  // Inserting nodes
  bst.insert(10);
  bst.insert(5);
  bst.insert(15);
  bst.insert(3);
  bst.insert(7);
  bst.insert(12);
  bst.insert(20);

  print("In-order traversal before deletion:");
  bst.inOrder();

  // Deleting a node
  bst.delete(15);

  print("In-order traversal after deletion:");
  bst.inOrder();
}
