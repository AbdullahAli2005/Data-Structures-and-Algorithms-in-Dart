class Node {
  int data;
  Node? next;

  Node(this.data);
}

class CircularLinkedList {
  Node? head;

  // Traverse and print the list
  void traverse() {
    if (head == null) {
      print("List is empty");
      return;
    }
    Node? ptr = head;
    do {
      print("Element is ${ptr!.data}");
      ptr = ptr.next;
    } while (ptr != head);
  }

  // Insert at the beginning
  void insertAtFirst(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      newNode.next = head;
    } else {
      Node? temp = head;
      while (temp!.next != head) {
        temp = temp.next;
      }
      temp.next = newNode;
      newNode.next = head;
      head = newNode;
    }
  }

  // Insert at an index
  void insertAtIndex(int data, int index) {
    Node newNode = Node(data);
    if (index == 0) {
      insertAtFirst(data);
      return;
    }
    Node? temp = head;
    for (int i = 0; i < index - 1 && temp != null; i++) {
      temp = temp.next;
    }
    if (temp == null) {
      print("Index out of bounds");
      return;
    }
    newNode.next = temp.next;
    temp.next = newNode;
  }

  // Insert at the end
  void insertAtEnd(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      newNode.next = head;
      return;
    }
    Node? temp = head;
    while (temp!.next != head) {
      temp = temp.next;
    }
    temp.next = newNode;
    newNode.next = head;
  }

  // Insert after a specific node
  void insertAfterNode(Node? prevNode, int data) {
    if (prevNode == null) {
      print("The given previous node cannot be null");
      return;
    }
    Node newNode = Node(data);
    newNode.next = prevNode.next;
    prevNode.next = newNode;
  }
}

void main() {
  CircularLinkedList cll = CircularLinkedList();

  // Creating the circular linked list
  cll.insertAtFirst(1);
  cll.insertAtFirst(6);
  cll.insertAtFirst(3);
  cll.insertAtFirst(4);

  print("Circular linked list before insertions:");
  cll.traverse();

  // Insert at the beginning
  cll.insertAtFirst(10);
  print("\nCircular linked list after inserting 10 at the beginning:");
  cll.traverse();

  // Insert at index 2
  cll.insertAtIndex(15, 2);
  print("\nCircular linked list after inserting 15 at index 2:");
  cll.traverse();

  // Insert at the end
  cll.insertAtEnd(20);
  print("\nCircular linked list after inserting 20 at the end:");
  cll.traverse();

  // Insert after the second node
  cll.insertAfterNode(cll.head?.next, 25);
  print("\nCircular linked list after inserting 25 after the second node:");
  cll.traverse();
}
