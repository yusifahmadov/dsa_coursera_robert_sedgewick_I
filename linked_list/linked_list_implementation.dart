class Node {
  String? item;
  Node? next;
}

class LinkedListOperations {
  Node? first_;
  bool isEmpty(Node? node) => first_ == null;

  void push(String item) {
    Node? oldOne = first_;
    first_ = Node();
    first_?.item = item;
    first_?.next = oldOne;
  }

  String pop() {
    String? item = first_?.item;
    first_ = first_?.next;
    return item!;
  }
}
