class FixedCapacityStackImplementation {
  List<String?>? s;
  int N = 0;

  FixedCapacityStackImplementation(int capacity) {
    s = List.filled(capacity, null);
  }

  bool isEmpty() => N == 0;

  void push(String item) {
    s?[N++] = item;
  }

  String? pop() {
    String? item = s?[--N];
    s?[N] = null;

    return item;
  }
}
