class QuickUnionImplementation {
  List<int> id_ = [];
  // Fill a list with index of array
  // 0,1,2,3,4,5 and etc.
  quickUnionUF(int N) {
    id_ = List.filled(N, 0);
    for (var i = 0; i < N; i++) {
      id_[i] = i;
    }
  }

  // If element i is not equal to it's value in list, then force equal i to id_[i]
  // For example: i = 3, but id_[i] = 8, so i = id_[i] ==> i = 8
  int root(int i) {
    while (i != id_[i]) i = id_[i];
    return i;
  }

  // Check roots are equal
  bool connected(int p, int q) {
    return root(p) == root(q);
  }

  // Get root of first and second element, and then equal i'th element to j;
  // For example: p = 7, q = 3. So 'root of 3' = i = 1, 'root if q' = j = 8, so
  // equal i'th element in array to j ==> id_[1] = 8;
  union(int p, int q) {
    int i = root(p);
    int j = root(q);
    id_[i] = j;
  }
}
