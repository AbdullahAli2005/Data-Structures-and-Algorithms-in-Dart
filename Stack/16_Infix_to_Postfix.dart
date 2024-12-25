class Stack {
  final int size;
  late List<String> _stack;
  int top = -1;

  Stack(this.size) {
    _stack = List.filled(size, '', growable: false);
  }

  bool isEmpty() => top == -1;

  bool isFull() => top == size - 1;

  void push(String val) {
    if (isFull()) {
      print("Stack Overflow! Cannot push $val to the stack");
    } else {
      _stack[++top] = val;
    }
  }

  String pop() {
    if (isEmpty()) {
      print("Stack Underflow! Cannot pop from the stack");
      return '';
    } else {
      return _stack[top--];
    }
  }

  String stackTop() {
    if (isEmpty()) {
      return '';
    }
    return _stack[top];
  }
}

int precedence(String ch) {
  if (ch == '*' || ch == '/') {
    return 3;
  } else if (ch == '+' || ch == '-') {
    return 2;
  } else {
    return 0;
  }
}

bool isOperator(String ch) {
  return ['+', '-', '*', '/'].contains(ch);
}

String infixToPostfix(String infix) {
  Stack stack = Stack(20); // Fixed-size stack
  String postfix = '';

  for (int i = 0; i < infix.length; i++) {
    String ch = infix[i];

    if (!isOperator(ch)) {
      postfix += ch;
    } else {
      while (!stack.isEmpty() && precedence(ch) <= precedence(stack.stackTop())) {
        postfix += stack.pop();
      }
      stack.push(ch);
    }
  }

  while (!stack.isEmpty()) {
    postfix += stack.pop();
  }

  return postfix;
}

void main() {
  String infix = "a-b*m+n/k";
  String postfix = infixToPostfix(infix);

  print("Postfix is: $postfix");
}
