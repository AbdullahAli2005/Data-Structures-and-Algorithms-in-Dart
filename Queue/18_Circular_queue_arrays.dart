class CircularQueue {
  final int size;
  late List<int?> queue;
  int front = -1;
  int rear = -1;

  CircularQueue(this.size) {
    queue = List<int?>.filled(size, null); // Initialize list with null values
  }

  bool isEmpty() {
    return front == -1;
  }

  bool isFull() {
    return (rear + 1) % size == front;
  }

  void enqueue(int val) {
    if (isFull()) {
      print("Queue is full!");
      return;
    }

    if (isEmpty()) {
      // If the queue is empty, initialize front
      front = 0;
    }

    rear = (rear + 1) % size;
    queue[rear] = val;
    print("Enqueued: $val");
  }

  int? dequeue() {
    if (isEmpty()) {
      print("Queue is empty!");
      return null;
    }

    int? dequeuedElement = queue[front];
    queue[front] = null; 

    if (front == rear) {
      // Queue becomes empty after dequeuing the last element
      front = -1;
      rear = -1;
    } else {
      front = (front + 1) % size;
    }

    print("Dequeued: $dequeuedElement");
    return dequeuedElement;
  }

  void traverse() {
    if (isEmpty()) {
      print("Queue is empty!");
      return;
    }

    print("Queue elements:");
    int i = front;
    do {
      print(queue[i]);
      i = (i + 1) % size;
    } while (i != (rear + 1) % size);
  }
}

void main() {
  // Create a circular queue with size 5
  CircularQueue cq = CircularQueue(5);

  cq.enqueue(10);
  cq.enqueue(20);
  cq.enqueue(30);
  cq.enqueue(40);

  cq.traverse();

  cq.dequeue();
  cq.dequeue();

  cq.traverse();

  cq.enqueue(50);
  cq.enqueue(60);
  cq.enqueue(70);

  cq.traverse();

  cq.enqueue(80); // Attempt to enqueue when full
}
