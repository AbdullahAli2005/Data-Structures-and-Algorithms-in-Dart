class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  // Method to traverse the linked list and print elements
  void traverse() {
    Node? current = head;
    while (current != null) {
      print("Element: ${current.data}");
      current = current.next;
    }
  }

  // Case 1: Insert at the beginning
  void insertAtFirst(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  // Case 2: Insert at a specific index
  void insertAtIndex(int data, int index) {
    if (index == 0) {
      insertAtFirst(data);
      return;
    }

    Node newNode = Node(data);
    Node? current = head;
    int i = 0;

    while (current != null && i < index - 1) {
      current = current.next;
      i++;
    }

    if (current != null) {
      newNode.next = current.next;
      current.next = newNode;
    } else {
      print("Index out of bounds");
    }
  }

  // Case 3: Insert at the end
  void insertAtEnd(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      return;
    }

    Node? current = head;
    while (current?.next != null) {
      current = current?.next;
    }

    current?.next = newNode;
  }

  // Case 4: Insert after a specific node
  void insertAfterNode(Node? prevNode, int data) {
    if (prevNode == null) {
      print("Previous node cannot be null");
      return;
    }

    Node newNode = Node(data);
    newNode.next = prevNode.next;
    prevNode.next = newNode;
  }
}

void main() {
  LinkedList list = LinkedList();

  // Creating nodes and linking them
  list.head = Node(5);
  Node second = Node(10);
  Node third = Node(15);
  Node fourth = Node(20);

  list.head?.next = second;
  second.next = third;
  third.next = fourth;

  print("Linked list before insertion:");
  list.traverse();

  // list.insertAtFirst(2);
  // list.insertAtIndex(12, 2);
  // list.insertAtEnd(35);
  list.insertAfterNode(third, 27);

  print("\nLinked list after insertion:");
  list.traverse();
}
