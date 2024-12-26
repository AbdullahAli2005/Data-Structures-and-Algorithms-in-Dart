# Queues in Dart

This directory contains implementations of various types of queues in Dart. Each implementation demonstrates a different way to handle queue operations like enqueue, dequeue, and traversal.

## Files Overview

### 1. `17_Queue_using_arrays.dart`
- **Description**: Implements a simple queue using arrays (fixed-size list).
- **Key Features**:
  - `enqueue`: Adds an element to the rear of the queue.
  - `dequeue`: Removes an element from the front of the queue.
  - `traverse`: Displays the elements of the queue.
  - Handles conditions like queue being full or empty.
- **Usage**: Suitable for scenarios with a fixed-size queue.

---

### 2. `18_Circular_queue_arrays.dart`
- **Description**: Implements a circular queue using arrays.
- **Key Features**:
  - Wraps around the end of the array for efficient space usage.
  - Handles full and empty queue conditions.
  - `enqueue` and `dequeue` operations maintain circular behavior.
  - `traverse`: Displays elements in circular order.
- **Usage**: Ideal for scenarios requiring continuous usage of a fixed-size array.

---

### 3. `19_Queue-using_linkedList.dart`
- **Description**: Implements a queue using a linked list.
- **Key Features**:
  - Dynamically sized queue, not limited by fixed size.
  - `enqueue` adds elements to the rear, and `dequeue` removes elements from the front.
  - `traverse`: Displays all elements in the queue.
- **Usage**: Suitable when the queue size is not predetermined.

---

### 4. `20_Double_ended_queue_using_array.dart`
- **Description**: Implements a double-ended queue (Deque) using arrays.
- **Key Features**:
  - `enqueueFront` and `enqueueRear`: Add elements to the front or rear.
  - `dequeueFront` and `dequeueRear`: Remove elements from the front or rear.
  - `traverse`: Displays elements from front to rear.
  - Circular behavior for efficient space usage.
- **Usage**: Used in scenarios where both ends of the queue are active.

---

## How to Run
1. Ensure you have Dart installed on your system.
2. Use the following command to execute a specific file:
   ```bash
   dart <filename>.dart
