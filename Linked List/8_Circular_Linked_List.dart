class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

void circularLinkedListTraversal(Node head) {
  Node? ptr = head;
  do {
    print("Element is ${ptr!.data}");
    ptr = ptr.next;
  } while (ptr != head);
}

void main() {
  // Create nodes
  Node head = Node(8);
  Node second = Node(16);
  Node third = Node(24);
  Node fourth = Node(32);

  // Link the nodes to form a circular linked list
  head.next = second;
  second.next = third;
  third.next = fourth;
  fourth.next = head;

  // Traverse the circular linked list
  circularLinkedListTraversal(head);
}
