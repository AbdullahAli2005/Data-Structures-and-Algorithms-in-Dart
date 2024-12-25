class Node {
  int data;
  Node? next;

  Node(this.data);
}

class CircularLinkedList {
  Node? head;

  // Traversing the Circular Linked List
  void traverse() {
    if (head == null) {
      print("The list is empty.");
      return;
    }

    Node? current = head;
    do {
      print("Element is ${current!.data}");
      current = current.next;
    } while (current != head);
  }

  // Delete the first node
  void deleteFirst() {
    if (head == null) return; // Empty list

    if (head!.next == head) {
      head = null; // Single-node case
      return;
    }

    // Find the last node
    Node? current = head;
    while (current!.next != head) {
      current = current.next;
    }

    // Update the head and last node's pointer
    current.next = head!.next;
    head = head!.next;
  }

  // Delete node at a specific index
  void deleteAtIndex(int index) {
    if (head == null || index < 0) return; // Handle invalid cases

    if (index == 0) {
      deleteFirst();
      return;
    }

    Node? current = head;
    for (int i = 0; i < index - 1; i++) {
      if (current!.next == head) {
        return;
      } // Index out of bounds
      current = current.next;
    }

    current!.next = current.next?.next; // Skip the target node
  }

  // Delete the last node
  void deleteLast() {
    if (head == null) return; // Empty list

    if (head!.next == head) {
      head = null; // Single-node case
      return;
    }

    Node? current = head;
    while (current!.next!.next != head) {
      current = current.next;
    }

    current.next = head; // Update the second last node's pointer
  }

  // Delete the first node with a given value
  void deleteGivenValue(int value) {
    if (head == null) return; // Empty list

    if (head!.data == value) {
      deleteFirst();
      return;
    }

    Node? current = head;
    while (current!.next != head && current.next!.data != value) {
      current = current.next;
    }

    if (current.next!.data == value) {
      current.next = current.next!.next; // Skip the node with the value
    }
  }

  // Add nodes to the circular linked list
  void addNode(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
      head!.next = head;
      return;
    }

    Node? current = head;
    while (current!.next != head) {
      current = current.next;
    }

    current.next = newNode;
    newNode.next = head;
  }
}

void main() {
  CircularLinkedList list = CircularLinkedList();

  // Add nodes to the list
  list.addNode(8);
  list.addNode(16);
  list.addNode(24);
  list.addNode(32);
  list.addNode(40);
  list.addNode(48);

  print("Original Circular Linked List:");
  list.traverse();

  // Perform deletions
  list.deleteFirst();
  print("\nAfter deleting first node:");
  list.traverse();

  list.deleteAtIndex(1);
  print("\nAfter deleting node at index 1:");
  list.traverse();

  list.deleteLast();
  print("\nAfter deleting last node:");
  list.traverse();

  list.deleteGivenValue(16);
  print("\nAfter deleting node with value 16:");
  list.traverse();
}
