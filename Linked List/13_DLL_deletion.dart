import 'dart:io';

class Node {
  int data;
  Node? prev;
  Node? next;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;

  // Append a node to the end of the list
  void appendNode(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode; // If the list is empty, the new node becomes the head
      return;
    }
    Node temp = head!;
    while (temp.next != null) {
      temp = temp.next!;
    }
    temp.next = newNode;
    newNode.prev = temp;
  }

  // Delete the first node
  void deleteAtFirst() {
    if (head == null) {
      print("The list is empty. Nothing to delete.");
      return;
    }
    head = head!.next;
    if (head != null) {
      head!.prev = null;
    }
  }

  // Delete the last node
  void deleteAtLast() {
    if (head == null) {
      print("The list is empty. Nothing to delete.");
      return;
    }
    Node temp = head!;
    while (temp.next != null) {
      temp = temp.next!;
    }
    if (temp.prev != null) {
      temp.prev!.next = null;
    } else {
      // This was the only node
      head = null;
    }
  }

  // Delete a node at a specific index
  void deleteAtIndex(int index) {
    if (head == null) {
      print("The list is empty. Nothing to delete.");
      return;
    }
    if (index == 0) {
      deleteAtFirst();
      return;
    }
    Node temp = head!;
    for (int i = 0; i < index && temp.next != null; i++) {
      temp = temp.next!;
    }
    if (temp.next == null && temp.prev == null) {
      print("Index out of bounds.");
      return;
    }
    if (temp.next != null) {
      temp.next!.prev = temp.prev;
    }
    if (temp.prev != null) {
      temp.prev!.next = temp.next;
    }
  }

  // Delete a node by value
  void deleteByValue(int value) {
    if (head == null) {
      print("The list is empty. Nothing to delete.");
      return;
    }
    Node? temp = head;
    while (temp != null && temp.data != value) {
      temp = temp.next;
    }
    if (temp == null) {
      print("Value not found in the list.");
      return;
    }
    if (temp.next != null) {
      temp.next!.prev = temp.prev;
    }
    if (temp.prev != null) {
      temp.prev!.next = temp.next;
    } else {
      head = temp.next; // If deleting the head node
    }
  }

  // Traverse the list and print elements
  void traverseList() {
    Node? temp = head;
    print("List: ");
    while (temp != null) {
      stdout.write("${temp.data} ");
      temp = temp.next;
    }
    print("");
  }
}

void main() {
  DoublyLinkedList list = DoublyLinkedList();

  list.appendNode(10);
  list.appendNode(20);
  list.appendNode(30);
  list.appendNode(40);
  list.appendNode(50);

  list.traverseList();

  list.deleteAtFirst();
  list.traverseList();

  list.deleteAtLast();
  list.traverseList();

  list.deleteAtIndex(1);
  list.traverseList();

  list.deleteByValue(40);
  list.traverseList();
}
