class Node {
  int key;
  Node? left;
  Node? right;
  int height;

  Node(this.key)
      : left = null,
        right = null,
        height = 1; // New nodes are always leaves with height 1
}

// Function to get the height of a node
int getHeight(Node? node) {
  if (node == null) {
    return 0; // Null node has height 0
  }
  return node.height;
}

// Function to create a new node
Node createNode(int key) {
  return Node(key); // Initialize the node with key and height 1
}

// Function to return the maximum of two integers
int max(int a, int b) {
  return (a > b) ? a : b; // Return the greater of a and b
}

// Function to calculate the balance factor of a node
// Formula: Balance Factor = Height of left subtree - Height of right subtree
int getBalanceFactor(Node? node) {
  if (node == null) {
    return 0; // Null node has a balance factor of 0
  }
  return getHeight(node.left) - getHeight(node.right);
}

// Function to perform a right rotation
// Example: Left-Left (LL) Case (Left-heavy tree)
// Before Rotation (Unbalanced at 5):
//        5
//       /
//      3
//     / \
//    2   NULL
//
// After Right Rotation:
//        3
//       / \
//      2   5
//         /
//       NULL
//
// Explanation:
// The unbalanced node is 5. Its left child (3) becomes the new root of the subtree.
// The right child of 3 (if any, here NULL) becomes the left child of 5.
Node rightRotate(Node unbalancedNode) {
  Node leftChild = unbalancedNode.left!;
  Node? leftRightSubtree = leftChild.right;

  // Perform rotation
  leftChild.right = unbalancedNode;
  unbalancedNode.left = leftRightSubtree;

  // Update heights
  unbalancedNode.height =
      max(getHeight(unbalancedNode.left), getHeight(unbalancedNode.right)) + 1;
  leftChild.height =
      max(getHeight(leftChild.left), getHeight(leftChild.right)) + 1;

  // Return the new root after rotation
  return leftChild;
}


// Function to perform a left rotation
// Example: Right-Right (RR) Case (Right-heavy tree)
// Before Rotation (Unbalanced at 3):
//      3
//       \
//        5
//       / \
//      4   6
//
// After Left Rotation:
//      5
//     / \
//    3   6
//     \
//      4
//
// Explanation:
// The unbalanced node is 3. Its right child (5) becomes the new root of the subtree.
// The left child of 5 (node 4) becomes the right child of 3
Node leftRotate(Node unbalancedNode) {
  Node rightChild = unbalancedNode.right!;
  Node? rightLeftSubtree = rightChild.left;

  // Perform rotation
  rightChild.left = unbalancedNode;
  unbalancedNode.right = rightLeftSubtree;

  // Update heights
  unbalancedNode.height =
      max(getHeight(unbalancedNode.left), getHeight(unbalancedNode.right)) + 1;
  rightChild.height =
      max(getHeight(rightChild.left), getHeight(rightChild.right)) + 1;

  // Return the new root after rotation
  return rightChild;
}

// Function to insert a node into the AVL tree
Node insert(Node? node, int key) {
  // Perform standard BST insertion
  if (node == null) {
    return createNode(key); // Base case: Insert the node here
  }

  if (key < node.key) {
    node.left = insert(node.left, key); // Insert into the left subtree
  } else if (key > node.key) {
    node.right = insert(node.right, key); // Insert into the right subtree
  } else {
    return node; // Duplicate keys are not allowed in BST
  }

  // Update the height of the current node
  node.height = 1 + max(getHeight(node.left), getHeight(node.right));

  // Get the balance factor to check if the node became unbalanced
  int balanceFactor = getBalanceFactor(node);

  // Left-Left (LL) Case: Perform a right rotation
  if (balanceFactor > 1 && key < node.left!.key) {
    return rightRotate(node);
  }

  // Right-Right (RR) Case: Perform a left rotation
  if (balanceFactor < -1 && key > node.right!.key) {
    return leftRotate(node);
  }

  // Left-Right (LR) Case: Perform a left rotation on left child, then a right rotation on the node
  if (balanceFactor > 1 && key > node.left!.key) {
    node.left = leftRotate(node.left!);
    return rightRotate(node);
  }

  // Right-Left (RL) Case: Perform a right rotation on right child, then a left rotation on the node
  if (balanceFactor < -1 && key < node.right!.key) {
    node.right = rightRotate(node.right!);
    return leftRotate(node);
  }

  // Return the unchanged node pointer
  return node;
}

// Function to perform a pre-order traversal: Root -> Left -> Right
void preOrderTraversal(Node? root) {
  if (root != null) {
    print(root.key); // Print the key of the node
    preOrderTraversal(root.left); // Traverse the left subtree
    preOrderTraversal(root.right); // Traverse the right subtree
  }
}

void main() {
  Node? root = null; // Start with an empty tree

  // Insert nodes into the AVL tree
  root = insert(root, 1);
  root = insert(root, 2);
  root = insert(root, 4);
  root = insert(root, 5);
  root = insert(root, 6);
  root = insert(root, 3);

  // Print the tree in pre-order traversal
  print("Pre-order traversal of the AVL tree:");
  preOrderTraversal(root);
}

// Output:
//         4
//        / \
//       2   5
//      / \   \
//     1   3   6
