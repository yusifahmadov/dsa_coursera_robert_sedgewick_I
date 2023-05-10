class ResizingArrayStackImplementation {
  List<String?>? s;
  int N = 0;

  FixedCapacityStackImplementation(int capacity) {
    s = List.filled(1, null);
  }

  bool isEmpty() => N == 0;

  void push(String item) {
    if (N == s?.length) resize(2 * s!.length);
    s?[N++] = item;
  }

  String? pop() {
    String? item = s?[--N];
    s?[N] = null;
    if (N > 0 && N == (s!.length / 4)) resize(s!.length ~/ 2);
    return item;
  }

  void resize(int capacity) {
    List<String?> copy = List<String?>.filled(capacity, null);
    for (var i = 0; i < N; i++) {
      copy[i] = s?[i];
    }
    s = copy;
  }
}
