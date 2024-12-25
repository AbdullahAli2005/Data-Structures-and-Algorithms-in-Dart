class Deque {
  List<int?> deque;
  int front;
  int rear;
  int size;

  Deque(this.size)
      : deque = List.filled(size, null),
        front = -1,
        rear = -1;

  bool isEmpty() {
    return front == -1;
  }

  bool isFull() {
    return (rear + 1) % size == front;
  }

  // Insert element at the front
  void enqueueFront(int value) {
    if (isFull()) {
      print("Deque is full");
      return;
    }
    if (isEmpty()) {
      front = rear = 0;
    } else {
      front = (front - 1 + size) % size;
    }
    deque[front] = value;
    print("Inserted $value at front");
  }

  // Insert element at the rear
  void enqueueRear(int value) {
    if (isFull()) {
      print("Deque is full");
      return;
    }
    if (isEmpty()) {
      front = rear = 0;
    } else {
      rear = (rear + 1) % size;
    }
    deque[rear] = value;
    print("Inserted $value at rear");
  }

  // Remove element from the front
  int? dequeueFront() {
    if (isEmpty()) {
      print("Deque is empty");
      return null;
    }
    int? value = deque[front];
    deque[front] = null; // Clear the slot
    if (front == rear) {
      front = rear = -1; // Reset deque
    } else {
      front = (front + 1) % size;
    }
    return value;
  }

  // Remove element from the rear
  int? dequeueRear() {
    if (isEmpty()) {
      print("Deque is empty");
      return null;
    }
    int? value = deque[rear];
    deque[rear] = null; // Clear the slot
    if (front == rear) {
      front = rear = -1; // Reset deque
    } else {
      rear = (rear - 1 + size) % size;
    }
    return value;
  }

  void traverse() {
    if (isEmpty()) {
      print("Deque is empty");
      return;
    }
    print("Deque elements: ");
    int i = front;
    do {
      print(deque[i]);
      i = (i + 1) % size;
    } while (i != (rear + 1) % size);
  }
}

void main() {
  Deque dq = Deque(5);

  dq.enqueueRear(10);
  dq.enqueueRear(20);
  dq.enqueueFront(5);
  dq.enqueueFront(1);
  dq.traverse();

  print("Dequeued from front: ${dq.dequeueFront()}");
  print("Dequeued from rear: ${dq.dequeueRear()}");

  dq.enqueueRear(25);
  dq.enqueueFront(2);
  dq.traverse();

  if (dq.isEmpty()) {
    print("Deque is empty");
  }
  if (dq.isFull()) {
    print("Deque is full");
  }
}
