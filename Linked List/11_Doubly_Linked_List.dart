class Node {
  int data;
  Node? prev; // Pointer to the previous node
  Node? next; // Pointer to the next node

  Node(this.data); // Constructor to initialize data
}

class DoublyLinkedList {
  Node? head; // Pointer to the head of the list

  // Function to append a node to the end of the doubly linked list
  void appendNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode; // If the list is empty, the new node becomes the head
      return;
    }

    Node? temp = head;
    while (temp?.next != null) {
      // Traverse to the last node
      temp = temp?.next;
    }

    temp?.next = newNode; // Link the last node to the new node
    newNode.prev = temp; // Link the new node back to the last node
  }

  // Function to traverse the list in forward direction
  void traverseForward() {
    if (head == null) {
      print("The list is empty.");
      return;
    }

    Node? temp = head;
    print("Forward Traversal:");
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  // Function to traverse the list in reverse direction
  void traverseBackward() {
    if (head == null) {
      print("The list is empty.");
      return;
    }

    Node? temp = head;

    // Traverse to the last node
    while (temp?.next != null) {
      temp = temp?.next;
    }

    print("Backward Traversal:");
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();

  // Append nodes to the doubly linked list
  list.appendNode(10);
  list.appendNode(20);
  list.appendNode(30);
  list.appendNode(40);
  list.appendNode(50);

  // Traverse the list in both directions
  list.traverseForward();
  list.traverseBackward();
}
