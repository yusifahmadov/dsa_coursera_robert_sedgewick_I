class StackImplementation {
  List<int> stack = [];

  push(int item) {
    stack.add(item);
  }

  pop() {
    stack.removeLast();
  }

  int peek() {
    return stack.last;
  }
}
