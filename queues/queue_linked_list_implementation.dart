class Node {
  String? item;
  Node? next;
}

class QueueLinkedListImplementation {
  Node? first, last;

  bool isEmpty() => first == null;

  void enqueue(String item) {
    Node? oldLast = last;
    last = Node();
    last?.item = item;
    last?.next = null;
    if (isEmpty())
      first = last;
    else
      oldLast?.next = last;
  }

  String? dequeue() {
    String? item = first?.item;
    first = first?.next;
    if (isEmpty()) last = null;
    return item;
  }
}
