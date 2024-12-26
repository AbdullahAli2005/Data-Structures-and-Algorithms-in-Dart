# Stack Implementations in Dart

This repository contains three Dart implementations of Stack data structures and a utility for converting infix expressions to postfix notation. Each file demonstrates a specific approach to implementing stacks, along with examples of common stack operations.

## Table of Contents
1. [Stack Using Arrays](#stack-using-arrays)
2. [Stack Using Linked List](#stack-using-linked-list)
3. [Infix to Postfix Conversion](#infix-to-postfix-conversion)
4. [Time Complexity](#time-complexity)

---

## Stack Using Arrays

### File: `14_Stack_using_arrays.dart`

This implementation uses arrays to create a stack. The operations are performed with the help of an integer `top` to track the topmost element in the stack.

### Features
- **Push**: Adds an element to the top of the stack.
- **Pop**: Removes and returns the top element of the stack.
- **Peek**: Retrieves the element at a specific position from the top.
- **Stack Top and Bottom**: Returns the top or bottom element of the stack.
- **Traverse Stack**: Displays all elements in the stack.
- **Overflow and Underflow Handling**: Ensures safe operations when the stack is full or empty.

### Usage
```dart
void main() {
  Stack stack = Stack(10);
  stack.push(12);
  stack.pop();
}
```

---

## Stack Using Linked List

### File: `15_Stack_using_linkedlist.dart`

This implementation uses a linked list to create a dynamic stack. Each element is a node containing data and a reference to the next node.

### Features
- **Push**: Adds a node to the top of the stack.
- **Pop**: Removes and returns the data of the top node.
- **Peek**: Retrieves the value at a specific position from the top.
- **Stack Top and Bottom**: Returns the top or bottom node's value.
- **Traverse Stack**: Displays all elements in the stack.

### Usage
```dart
void main() {
  Stack stack = Stack();
  stack.push(45);
  stack.pop();
}
```

---

## Infix to Postfix Conversion

### File: `16_Infix_to_Postfix.dart`

This implementation demonstrates converting infix expressions (e.g., `a+b`) to postfix expressions (e.g., `ab+`). The algorithm uses a stack to store operators temporarily based on their precedence.

### Features
- **Operator Precedence**: Handles operator precedence correctly (e.g., `*` has higher precedence than `+`).
- **Stack Operations**: Ensures operators are popped and added to the postfix expression in the correct order.

### Example
```dart
void main() {
  String infix = "a-b*m+n/k";
  String postfix = infixToPostfix(infix);
  print("Postfix is: $postfix");
}
```

---

## Time Complexity

| Function          | Time Complexity |
|-------------------|-----------------|
| isEmpty           | O(1)            |
| isFull            | O(1)            |
| push              | O(1)            |
| pop               | O(1)            |
| peek              | O(n)            |
| stackTop          | O(1)            |
| stackBottom       | O(1)            |
| traverseStack     | O(n)            |

---

## License
This code is provided as-is for learning and personal use. Feel free to adapt it for your own projects!
