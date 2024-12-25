class Node {
  int data;
  Node? next;

  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  bool isEmpty() {
    return front == null;
  }

  // Enqueue (add element to the rear of the queue)
  void enqueue(int val) {
    Node newNode = Node(val);
    if (isEmpty()) {
      front = rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
    print('Enqueued: $val');
  }

  // Dequeue (remove element from the front of the queue)
  int? dequeue() {
    if (isEmpty()) {
      print('Queue is empty!');
      return null;
    }

    int dequeuedElement = front!.data;
    front = front!.next;

    // If the queue becomes empty, update rear to null
    if (front == null) {
      rear = null;
    }

    return dequeuedElement;
  }

  void traverse() {
    if (isEmpty()) {
      print('Queue is empty!');
      return;
    }

    print('Queue elements:');
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue q = Queue();

  // Test the queue operations
  q.enqueue(10);
  q.enqueue(20);
  q.enqueue(30);

  q.traverse();

  print('Dequeued: ${q.dequeue()}');
  print('Dequeued: ${q.dequeue()}');

  q.traverse();

  q.enqueue(40);
  q.enqueue(50);

  q.traverse();
}
