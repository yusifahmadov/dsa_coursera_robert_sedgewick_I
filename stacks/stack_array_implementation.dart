class FixedCapacityStackImplementation {
  List<String>? s;
  int N = 0;

  FixedCapacityStackImplementation(int capacity) {
    s = List.filled(5, "");
  }

  bool isEmpty() => N == 0;

  void push(String item) {
    s?[N++] = item;
  }

  String pop() {
    return s![--N];
  }
}
