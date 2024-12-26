# Singly and Circular Linked Lists in Dart

## Overview
This folder contains Dart implementations of linked list data structures, including Singly Linked Lists (SLL) and Circular Linked Lists (CLL). The implementations focus on fundamental operations such as traversal, insertion, and deletion.

---

## Basic Concepts

### What is a Linked List?
A linked list is a linear data structure where each element (called a node) is connected to the next via a pointer. Each node typically contains:
- **Data**: The value stored in the node.
- **Next Pointer**: A reference to the next node in the sequence.

Unlike arrays, linked lists are dynamic and can grow or shrink during execution.

### Types of Linked Lists
1. **Singly Linked List (SLL)**:  
   Each node points to the next node, and the last node points to `null`.

2. **Circular Linked List (CLL)**:  
   Similar to SLL, but the last node points back to the first node, forming a circular structure.

---

## File Descriptions

### Singly Linked List (SLL)

#### **5_Singly_Linked_List.dart**
- **Purpose**: Implements basic traversal of a Singly Linked List.  
- **Key Features**:
  - Defines a `Node` class to represent each node.
  - Implements a `linkedListTraversal` function to traverse and print the list elements.

#### **6_SLL_Insertion.dart**
- **Purpose**: Implements insertion operations in a Singly Linked List.  
- **Key Features**:
  - Insert at the beginning.
  - Insert at a specific index.
  - Insert at the end.
  - Insert after a specific node.

#### **7_SLL_Deletion.dart**
- **Purpose**: Implements deletion operations in a Singly Linked List.  
- **Key Features**:
  - Delete the first node.
  - Delete a node at a specific index.
  - Delete the last node.
  - Delete a node with a specific value.

---

### Circular Linked List (CLL)

#### **8_Circular_Linked_List.dart**
- **Purpose**: Implements traversal of a Circular Linked List.  
- **Key Features**:
  - Defines a `Node` class.
  - Implements a function to traverse and print the elements of the circular linked list.

#### **9_CLL_Insertion.dart**
- **Purpose**: Implements insertion operations in a Circular Linked List.  
- **Key Features**:
  - Insert at the beginning.
  - Insert at a specific index.
  - Insert at the end.
  - Insert after a specific node.

#### **10_CLL_Deletion.dart**
- **Purpose**: Implements deletion operations in a Circular Linked List.  
- **Key Features**:
  - Delete the first node.
  - Delete the last node.
  - Delete a node at a specific index.
  - Delete a node by value.

---

### Doubly Linked List (DLL)

#### **11_Doubly_Linked_List.dart**
- **Purpose**: Implements basic operations for a Doubly Linked List.  
- **Key Features**:
  - Traversal in both forward and backward directions.

#### **12_DLL_Insertion.dart**
- **Purpose**: Implements insertion operations for a Doubly Linked List.  
- **Key Features**:
  - Insert at the beginning.
  - Insert at the end.
  - Insert after a specific node.
  - Insert before a specific node.
  - Insert at a specific index.

#### **13_DLL_Deletion.dart**
- **Purpose**: Implements deletion operations for a Doubly Linked List.  
- **Key Features**:
  - Delete the first node.
  - Delete the last node.
  - Delete a node at a specific index.

---

## How to Use

1. **Set up Dart Environment**:
   - Ensure the Dart SDK is installed and your IDE is configured.

2. **Run Specific Files**:
   - Use the following command in the terminal:
     ```bash
     dart <file_name>.dart
     ```
     Example:
     ```bash
     dart 5_Singly_Linked_List.dart
     ```

3. **Understand the Outputs**:
   - Each file demonstrates the behavior of linked lists through sample data and operations.

4. **Experiment and Modify**:
   - Modify the input data or operations in the `main()` function to test different scenarios.

---

## Key Notes
- **Use Cases**: Linked lists are ideal for scenarios requiring frequent insertion and deletion operations.
- **Edge Cases**: Handle cases like inserting into an empty list, deleting the only node, or accessing invalid indices.

---

## Contact
Feel free to contribute or raise an issue for suggestions and improvements!  
Happy Coding!
