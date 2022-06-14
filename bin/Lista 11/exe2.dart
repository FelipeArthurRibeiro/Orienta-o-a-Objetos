void main(List<String> args) {
  Iterable<String> valor = mostrar(5);
  for (String num in valor) {
    print(num);
  }
}

Iterable<String> mostrar(int num) sync* {
  for (int i = 0; i < num; i++) {
    String s = '';
    for (int j = 0; j < (num - i); j++) {
      s += 'X ';
    }
    yield s; 
  }
}
