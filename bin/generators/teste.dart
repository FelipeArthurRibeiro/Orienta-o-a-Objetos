void main(List<String> args) {
  Iterable<int> lista = buscaValores(5);
  for (int value in lista) {
    print(value);
  }
}

Iterable<int> buscaValores(int num) sync* {
  int cnt = num;
  while (cnt > 0) {
    yield cnt--;
    print('*');
  }
}
