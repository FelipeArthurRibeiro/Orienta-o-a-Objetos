import 'dart:io';

void main(List<String> args) {
  List<String> carros = [];

  String opc = '';
  do {
    print(
        'Informe o código:\n1.Cadastrar Carro \n2.Listar Carros \n3.Remover Carro \n4.Sair');
    opc = stdin.readLineSync()!;

    switch (opc) {
      case '1':
        
        break;
      case '2':
        break;
      case '3':
        break;
    }
  } while (opc != '4');
}
