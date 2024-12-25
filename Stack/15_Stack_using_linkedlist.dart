class Node {
  int data;
  Node? next;

  Node(this.data);
}

class Stack {
  Node? top;

  // Check if the stack is empty
  bool isEmpty() {
    return top == null;
  }

  // Push an element onto the stack
  void push(int val) {
    Node newNode = Node(val);
    newNode.next = top;
    top = newNode;
    print("Pushed $val onto the stack");
  }

  // Pop an element from the stack
  int pop() {
    if (isEmpty()) {
      print("Stack Underflow! Cannot pop from the stack");
      return -1;
    } else {
      int poppedValue = top!.data;
      top = top!.next;
      print("Popped $poppedValue from the stack");
      return poppedValue;
    }
  }

  // Peek at a specific position in the stack
  int peek(int position) {
    Node? current = top;
    int index = 1;
    while (current != null && index < position) {
      current = current.next;
      index++;
    }
    if (current == null) {
      print("Not a valid position for the stack");
      return -1;
    } else {
      print("Value at position $position from the top is: ${current.data}");
      return current.data;
    }
  }

  // Get the top element of the stack
  int stackTop() {
    if (isEmpty()) {
      print("The stack is empty. No top element.");
      return -1;
    } else {
      print("The top value of the stack is: ${top!.data}");
      return top!.data;
    }
  }

  // Get the bottom element of the stack
  int stackBottom() {
    if (isEmpty()) {
      print("The stack is empty. No bottom element.");
      return -1;
    } else {
      Node? current = top;
      while (current!.next != null) {
        current = current.next;
      }
      print("The bottom value of the stack is: ${current.data}");
      return current.data;
    }
  }

  // Traverse and display the stack
  void traverseStack() {
    if (isEmpty()) {
      print("Stack is empty.");
      return;
    }
    print("Stack elements: ");
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Stack stack = Stack();
  print("Stack has been created successfully");

  print("Before pushing, Empty: ${stack.isEmpty()}");

  stack.push(12);
  stack.push(24);
  stack.push(76);
  stack.push(88);
  stack.push(45);
  stack.push(63);
  stack.push(108);
  stack.push(37);
  stack.push(99);
  stack.push(23);

  stack.traverseStack();

  stack.pop();
  stack.pop();
  stack.pop();

  stack.traverseStack();

  stack.peek(4);
  stack.peek(8);

  stack.stackTop();
  stack.stackBottom();
}

// FUNCTION	    TIME COMPLEXITY
// isEmpty	        O(1)
// isFull	          O(1)
// push             O(1)
// pop	            O(1)
// peek	            O(n)
// stackTop         O(1)
// stackBottom	    O(1)
// traverseStack	  O(n)
