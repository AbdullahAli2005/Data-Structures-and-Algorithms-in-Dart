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

  // Case 1: Deleting the first element from the linked list
  void deleteFirst() {
    if (head != null) {
      Node? temp = head;
      head = head?.next;
      temp = null;  // Dart automatically handles garbage collection
    }
  }

  // Case 2: Deleting the element at a given index from the linked list
  void deleteAtIndex(int index) {
    if (index == 0) {
      deleteFirst();
      return;
    }

    Node? current = head;
    Node? previous;
    int i = 0;

    while (current != null && i < index) {
      previous = current;
      current = current.next;
      i++;
    }

    if (current != null) {
      previous?.next = current.next;
      current = null;  // Dart handles garbage collection automatically
    }
  }

  // Case 3: Deleting the last element
  void deleteAtLast() {
    if (head == null || head?.next == null) {
      head = null;
      return;
    }

    Node? current = head;
    Node? previous;

    while (current?.next != null) {
      previous = current;
      current = current?.next;
    }

    if (previous != null) {
      previous.next = null;
    }
    current = null;  // Dart handles garbage collection automatically
  }

  // Case 4: Deleting the element with a given value from the linked list
  void deleteGivenValue(int value) {
    Node? current = head;
    Node? previous;

    while (current != null && current.data != value) {
      previous = current;
      current = current.next;
    }

    if (current != null && current.data == value) {
      if (previous != null) {
        previous.next = current.next;
      } else {
        head = current.next;
      }
      current = null;  // Dart handles garbage collection automatically
    }
  }
}

void main() {
  LinkedList list = LinkedList();

  // Creating nodes and linking them
  list.head = Node(20);
  Node second = Node(30);
  Node third = Node(40);
  Node fourth = Node(50);

  list.head?.next = second;
  second.next = third;
  third.next = fourth;

  print("Linked list before deletion:");
  list.traverse();

  // list.deleteFirst(); // For deleting first element of the linked list
  // list.deleteAtIndex(2);
  // list.deleteAtLast();
  list.deleteGivenValue(20);

  print("\nLinked list after deletion:");
  list.traverse();
}
