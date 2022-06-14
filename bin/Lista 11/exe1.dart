void main(List<String> args) {
  Iterable<String> valor = tabuada(6);
  for (String num in valor) {
    print(num);
  }
}

Iterable<String> tabuada(int valor) sync* {
  for (int i = 1; i <= 10; i++) {
    yield '$valor x $i = ${valor * i}';
    print('-');
  }
}
