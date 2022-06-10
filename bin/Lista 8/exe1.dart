import 'dart:io';

void main(List<String> args) {
  List<double> listaNumeros = [];
  try {
    while (true) {
      solicita(listaNumeros);
    }
  } catch (e) {
    print('Valor inválido');
  }

  print('');

  listaNumeros.forEach((element) => print(element));
  print('');
  print('Fim');
  /*
  for (int i = 0; i < listaNumeros.length; i++) {
    print(listaNumeros[i]);
  }
  */
}

void solicita(List<double> lista) {
  print('Digite um número');
  double num = double.parse(stdin.readLineSync()!);
  lista.add(num);
}
