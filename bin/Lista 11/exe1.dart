void main(List<String> args) {
  Iterable<int> valor = tabuada(6);
  for (int num in valor) {
    print(num);
  }
}

Iterable<int> tabuada(int valor) sync* {
  for (int i = 1; i <= 10; i++) {
    yield '$valor x $i = ${valor * i}';
    print('.');
  }
}
