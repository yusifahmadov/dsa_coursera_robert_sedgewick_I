class QuickFindUF {
  List<int> id = [];

  quickFindUf(int N) {
    id = List.filled(N, 0);
    for (var i = 0; i < N; i++) {
      id[i] = i;
    }
  }

  bool connected(int p, int q) => id[p] == id[q];

  union(int p, int q) {
    int pid = id[p];
    int qid = id[q];

    for (var i = 0; i < id.length; i++) {
      if (id[i] == pid) id[i] = qid;
    }
  }
}
