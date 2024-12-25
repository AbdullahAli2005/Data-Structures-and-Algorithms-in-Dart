// Define the structure for the tree node
class TreeNode {
  int data;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.data);
}

// Create a new tree node
TreeNode createNode(int data) {
  return TreeNode(data);
}

TreeNode? _previousNode;

bool isBST(TreeNode? root) {
  if (root == null) {
    return true; // An empty tree is a BST
  }

  // Check the left subtree
  if (!isBST(root.left)) {
    return false;
  }

  // Check current node with the previous node
  if (_previousNode != null && root.data <= _previousNode!.data) {
    return false;
  }

  // Update the previous node
  _previousNode = root;

  // Check the right subtree
  return isBST(root.right);
}

// Search for a key iteratively in the BST
TreeNode? searchIter(TreeNode? root, int key) {
  while (root != null) {
    if (key == root.data) {
      print("Element $key found in the tree.");
      return root;
    } else if (key < root.data) {
      root = root.left;
    } else {
      root = root.right;
    }
  }
  print("Element $key not found in the tree.");
  return null;
}

void main() {
  // Create a binary tree
  TreeNode root = createNode(10);
  root.left = createNode(5);
  root.right = createNode(15);
  root.left!.left = createNode(3);
  root.left!.right = createNode(7);
  // The tree looks like this:
  //      10
  //     / \
  //    5   15
  //   / \
  //  3   7

  // Check if the tree is a BST
  if (isBST(root)) {
    print("The tree is a BST.");
  } else {
    print("The tree is not a BST.");
  }

  searchIter(root, 7);
  searchIter(root, 70);
}
