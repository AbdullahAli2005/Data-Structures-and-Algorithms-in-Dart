class Stack {
  late int size;
  late int top;
  late List<int> arr;

  Stack(int size) {
    this.size = size;
    top = -1;
    arr = List.filled(size, 0);
  }

  bool isEmpty() {
    return top == -1;
  }

  bool isFull() {
    return top == size - 1;
  }

  void push(int val) {
    if (isFull()) {
      print("Stack Overflow! Cannot push $val to the stack");
    } else {
      top++;
      arr[top] = val;
    }
  }

  int pop() {
    if (isEmpty()) {
      print("Stack Underflow! Cannot pop from the stack");
      return -1;
    } else {
      int val = arr[top];
      top--;
      return val;
    }
  }

  int peek(int i) {
    int arrayInd = top - i + 1; // Calculate the index of the stack element
    if (arrayInd < 0 || arrayInd > top) {
      print("Not a valid position for the stack");
      return -1;
    } else {
      int value = arr[arrayInd];
      print("Value at position $i from the top is: $value");
      return value;
    }
  }

  int stackTop() {
    if (top == -1) {
      print("The stack is empty. No top element.");
      return -1;
    }
    int topValue = arr[top];
    print("The top value of the stack is: $topValue");
    return topValue;
  }

  int stackBottom() {
    if (top == -1) {
      print("The stack is empty. No bottom element.");
      return -1;
    }
    int bottomValue = arr[0];
    print("The bottom value of the stack is: $bottomValue");
    return bottomValue;
  }

  void traverseStack() {
    if (isEmpty()) {
      print("Stack is empty.");
      return;
    }
    print("Stack elements:");
    for (int i = 0; i <= top; i++) {
      print(arr[i]);
    }
  }
}

void main() {
  // Create a stack with size 10
  Stack stack = Stack(10);
  print("Stack has been created successfully");

  print("Before pushing, Full: ${stack.isFull()}");
  print("Before pushing, Empty: ${stack.isEmpty()}");

  // Push elements onto the stack
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
  stack.push(46); // Stack Overflow

  print("After pushing, Full: ${stack.isFull()}");
  print("After pushing, Empty: ${stack.isEmpty()}");

  // Traverse the stack
  stack.traverseStack();

  // Pop elements from the stack
  print("Popped ${stack.pop()} from the stack");
  print("Popped ${stack.pop()} from the stack");
  print("Popped ${stack.pop()} from the stack");

  // Traverse the stack
  stack.traverseStack();

  // Peek elements
  stack.peek(4);
  stack.peek(8);

  // Display top and bottom elements
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