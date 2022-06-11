import 'dart:io';

void main(List<String> args) {
  solicitaNumero().then((value) {
    print(value);
  }).catchError((onError) {
    print('Ocorreu um erro: $onError');
  });
}

Future<int> solicitaNumero() async {
  try {
    print('Informe um número:');
    int numero = int.parse(stdin.readLineSync()!);
    return numero;
  } catch (e) {
    throw MyException();
  }
}

class MyException implements Exception {
  MyException();
}
