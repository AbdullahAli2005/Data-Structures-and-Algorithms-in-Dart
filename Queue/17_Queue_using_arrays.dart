class Queue {
  late List<int> _arr; // Fixed-size list for the queue
  final int size; 
  int _front = -1;
  int _rear = -1; 

  Queue(this.size) {
    _arr = List.filled(size, 0); // initializing list
  }

  bool isEmpty() {
    return _rear == _front;
  }

  bool isFull() {
    return _rear == size - 1;
  }

  void enqueue(int val) {
    if (isFull()) {
      print("This Queue is full");
    } else {
      _rear++;
      _arr[_rear] = val;
      print("Enqueued element: $val");
    }
  }

  int dequeue() {
    if (isEmpty()) {
      print("This Queue is empty");
      return -1;
    } else {
      _front++;
      int dequeuedElement = _arr[_front];
      return dequeuedElement;
    }
  }

  void traverse() {
    if (isEmpty()) {
      print("Queue is empty");
    } else {
      print("Queue elements: ${_arr.sublist(_front + 1, _rear + 1).join(' ')}");
    }
  }
}

void main() {
  Queue queue = Queue(10);

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  queue.traverse();

  print("Dequeuing element: ${queue.dequeue()}");
  print("Dequeuing element: ${queue.dequeue()}");
  print("Dequeuing element: ${queue.dequeue()}");

  queue.enqueue(40);
  queue.enqueue(50);
  queue.enqueue(60);

  queue.traverse();

  if (queue.isEmpty()) {
    print("Queue is empty");
  }
  if (queue.isFull()) {
    print("Queue is full");
  }
}
