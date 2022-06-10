import 'dart:io';

import 'classFila.dart';

void main(List<String> args) {
  //print('Informe quantas pessoas a na fila:');
  //int qtd = int.parse(stdin.readLineSync()!);

  Fila fila = Fila();

  fila.insert('Felipe');
  fila.insert('Arthur');
  fila.insert('Ribeiro');

  print(fila.remove());
  print(fila.remove());
  print(fila.remove());

  /*
  for (int i = 0; i < qtd; i++) {
    print('Informe o nome da pessoa:');
    String nome = stdin.readLineSync()!;
    fila.insert(nome);
  }
  print('');
  print('Ordem das pessoas:');
  print('');


  int len = fila.lenght;
  for (int i = 0; i < len; i++) {
    print(fila.remove());
  }
  */

}
