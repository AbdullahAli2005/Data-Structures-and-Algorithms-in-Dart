class Node {
  int data; // Stores data of the node
  Node? next; // Points to the next node in the linked list

  Node(this.data,
      [this.next]); // Constructor to initialize data and optional next node
}

void linkedListTraversal(Node? head) {
  Node? current = head; // Start from the head
  while (current != null) {
    print('Element: ${current.data}');
    current = current.next; // Move to the next node
  }
}

void main() {
  // Creating nodes for the linked list
  Node fourth = Node(20); 
  Node third = Node(15, fourth); 
  Node second = Node(10, third); 
  Node head = Node(5, second);

  linkedListTraversal(head);
}
