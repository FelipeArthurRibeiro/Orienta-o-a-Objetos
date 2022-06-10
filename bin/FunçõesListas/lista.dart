void main(List<String> args) {
  List myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List novaLista =
      myList.where((element) => element > 5 ? true : false).toList();

  print(novaLista);

  print('');

  int num = myList.reduce((value, element) => value + element);
  print(num);

  print('');

  int valor = myList.reduce((value, element) {
    print('$value + $element');
    return value + element;
  });
  print(valor);
}
