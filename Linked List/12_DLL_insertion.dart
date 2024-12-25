// Define the Node class
class Node {
  int data;
  Node? prev; // Pointer to the previous node
  Node? next; // Pointer to the next node

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;

  void insertAtBeginning(int data) {
    Node newNode = Node(data);
    if (head != null) {
      newNode.next = head;
      head!.prev = newNode;
    }
    head = newNode; // Update the head
  }

  // Method to append a node at the end; insertAtLast is implemented in this
  void appendNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node temp = head!;
    while (temp.next != null) {
      temp = temp.next!;
    }
    temp.next = newNode;
    newNode.prev = temp;
  }

  // Method to insert a node after a given node
  void insertAfterNode(Node prevNode, int data) {
    Node newNode = Node(data);
    newNode.next = prevNode.next;
    newNode.prev = prevNode;

    if (prevNode.next != null) {
      prevNode.next!.prev = newNode;
    }
    prevNode.next = newNode;
  }

  // Method to insert a node before a given node
  void insertBeforeNode(Node nextNode, int data) {
    Node newNode = Node(data);
    newNode.next = nextNode;
    newNode.prev = nextNode.prev;

    if (nextNode.prev != null) {
      nextNode.prev!.next = newNode;
    } else {
      head = newNode; // Update head if inserting at the very beginning
    }
    nextNode.prev = newNode;
  }

  // Method to insert a node at a specific index
  void insertAtIndex(int index, int data) {
    if (index < 0) {
      print("Index must be non-negative.");
      return;
    }
    if (index == 0) {
      insertAtBeginning(data);
      return;
    }
    Node? temp = head;
    int i = 0;

    // Traverse to the (index - 1)th node
    while (temp != null && i < index - 1) {
      temp = temp.next;
      i++;
    }
    if (temp == null) {
      print("Index out of bounds.");
      return;
    }
    insertAfterNode(temp, data);
  }

  // Method to traverse the list in forward direction
  void traverseForward() {
    if (head == null) {
      print("The list is empty.");
      return;
    }
    Node? temp = head;
    print("Forward Traversal:");
    while (temp != null) {
      print("${temp.data} ");
      temp = temp.next;
    }
    print("");
  }

  // Method to traverse the list in reverse direction
  void traverseBackward() {
    if (head == null) {
      print("The list is empty.");
      return;
    }
    Node? temp = head;

    // Traverse to the last node
    while (temp!.next != null) {
      temp = temp.next;
    }

    print("Backward Traversal:");
    while (temp != null) {
      print("${temp.data} ");
      temp = temp.prev;
    }
    print("");
  }
}

void main() {
  DoublyLinkedList dll = DoublyLinkedList();

  // Initiating doubly linked list
  dll.insertAtBeginning(10); 
  dll.appendNode(20);
  dll.appendNode(30);

  if (dll.head != null) {
    dll.insertAfterNode(dll.head!, 25); 
  }

  if (dll.head != null && dll.head!.next != null) {
    dll.insertBeforeNode(dll.head!.next!, 15); 
  }

  dll.insertAtIndex(0, 5); 
  dll.insertAtIndex(3, 35); 
  dll.insertAtIndex(10, 50); // Attempt to insert at out-of-bounds index

  // Traverse the list in both directions
  dll.traverseForward();
  dll.traverseBackward();
}
