# Tree Data Structures in Dart

This project demonstrates the implementation of various tree data structures in Dart. Trees are hierarchical structures used to represent relationships between elements (nodes), where each node has a value and references to child nodes. The following tree concepts are implemented:

1. **Binary Trees**
2. **Binary Search Trees (BST)**
3. **AVL Trees**

## Table of Contents
- [1. Binary Trees](#1-binary-trees)
- [2. Binary Search Trees (BST)](#2-binary-search-trees-bst)
- [3. AVL Trees](#3-avl-trees)
- [4. Notes](#4-notes)
- [5. Acknowledgements](#5-acknowledgements)

---

## 1. Binary Trees

### Concept:
A **Binary Tree** is a tree where each node has at most two children, referred to as the left and right child. The **BinaryTree** class allows for the traversal of the tree using three different strategies:
- **Pre-Order Traversal**: Root -> Left -> Right
- **In-Order Traversal**: Left -> Root -> Right
- **Post-Order Traversal**: Left -> Right -> Root

### Example Structure:
       10
       / \
      12   6
     / \
    7   24 

### Key Features:
- Supports three types of depth-first traversal.
- Recursive approach to traverse the tree.

---

## 2. Binary Search Trees (BST)

### Concept:
A **Binary Search Tree (BST)** is a special type of binary tree where:
- The left subtree of a node contains only nodes with values less than the node's value.
- The right subtree of a node contains only nodes with values greater than the node's value.

The provided implementation includes:
- **Insertion**: Insert new nodes while maintaining BST properties.
- **Search**: Search for a key in the tree iteratively.
- **BST Validation**: A function that checks if the tree adheres to the BST properties.

### Example Structure:
      10
     / \
    5   15
   / \
  3   7


### Key Features:
- Ability to insert and search for nodes.
- Validation to check if the tree is a valid BST.
- Recursive insertion and validation.

---

## 3. AVL Trees

### Concept:
An **AVL Tree** is a self-balancing binary search tree where the difference between the heights of the left and right subtrees (balance factor) of any node is at most 1. When this balance factor condition is violated, the tree performs rotations to restore balance.

### Key Operations:
- **Insertion**: Inserts a node while ensuring the tree remains balanced using rotations.
- **Rotations**: Four types of rotations are used to maintain balance:
  - **Right Rotation (LL case)**
  - **Left Rotation (RR case)**
  - **Left-Right Rotation (LR case)**
  - **Right-Left Rotation (RL case)**

### Example Structure after Insertions:
     4
    / \
   2   5
  / \   \
 1   3   6

 
### Key Features:
- Balances itself using rotations when an imbalance is detected.
- Provides fast search, insert, and delete operations, ensuring O(log n) performance.
- Supports pre-order traversal for visualizing the tree structure.

---

## 4. Notes

- **Time Complexity**:
  - **Binary Trees**: Basic operations such as insertion and search can take O(n) time, as there's no specific order for nodes.
  - **Binary Search Trees (BST)**: Operations like insertion, search, and deletion can be done in O(log n) time on average. However, if the tree is unbalanced, these operations can degrade to O(n).
  - **AVL Trees**: Due to the self-balancing nature of AVL trees, all operations (insertion, deletion, and search) are guaranteed to take O(log n) time.

- **Space Complexity**: 
  - All trees store elements in a hierarchical structure, and the space complexity is proportional to the number of nodes in the tree, i.e., O(n).

- **Traversal Types**:
  - **Pre-order**: Good for copying the tree.
  - **In-order**: Used for producing a sorted list of the tree's elements (for BSTs).
  - **Post-order**: Useful for deleting nodes or cleaning up resources.

---

## 5. Acknowledgements

This project aims to showcase various tree data structures and their operations in Dart. Trees are foundational structures in computer science, with applications in databases, file systems, and more.

Feel free to use or extend this project for educational purposes. If you have any improvements or suggestions, please open an issue or contribute via pull requests.

---

### Thank You! 🙏

For any questions or further clarification, feel free to reach out. Happy coding! 🚀


    
