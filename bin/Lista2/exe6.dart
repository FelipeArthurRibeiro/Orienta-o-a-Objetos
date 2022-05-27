import 'dart:io';

import 'veiculos6.dart';

void main(List<String> args) {
  List<Veiculos6> carros = [];

  String opc = '';
  do {
    print(
        'Informe o código:\n1.Cadastrar Carro \n2.Listar Carros \n3.Remover Carro \n4.Sair');
    opc = stdin.readLineSync()!;

    switch (opc) {
      case '1':
        Veiculos6 carro = Veiculos6();
        print('Informe a marca do carro');
        carro.marca = stdin.readLineSync()!;
        print('');
        print('Informe o modelo do carro');
        carro.modelo = stdin.readLineSync()!;
        print('');
        print('Informe o ano de fabricação');
        carro.anoFab = int.parse(stdin.readLineSync()!);
        print('');
        print('Informe o tipo de combustível');
        carro.tipoCombustivel = stdin.readLineSync()!;
        print('');
        carros.add(carro);
        break;
      case '2':
        for (Veiculos6 veiculos6 in carros) {
          print(veiculos6);
          print('');
        }
        break;
      case '3':
        print('Informe o modelo a remover');
        String modelo = stdin.readLineSync()!;
        
        break;

      case '4':
        break;

      default:
        print('Opção Inválida');
    }
  } while (opc != '4');
}
