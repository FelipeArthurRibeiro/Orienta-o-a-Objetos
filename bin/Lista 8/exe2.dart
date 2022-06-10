import 'dart:io';

List<String> nomesLista = [];
void main(List<String> args) {
  int opc;
  try {
    do {
      print(
          'Informe a opção: \n1. Add nome \n2. Exibir um nome \n3. Exibir todos os nomes \n4. Sair');
      opc = int.parse(stdin.readLineSync()!);
      switch (opc) {
        case 1:
          addNome();
          break;
        case 2:
          buscaNome();
          break;
        case 3:
          exibeNomes();
          break;
        case 4:
          break;
        default:
          print('Opção Inválida');
      }
    } while (opc != 4);
  } on CustomException catch (e) {
    print(e.msg);
    stdin.readLineSync()!;
  }
}

void addNome() {
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;
  if (nome.isNotEmpty) {
    nomesLista.add(nome);
  } else {
    print('Nome inválido');
    stdin.readLineSync()!;
  }
}

void buscaNome() {
  try {
    print('Informe o número do índice:');
    int numeroIndice = int.parse(stdin.readLineSync()!);
    print('Nome: ${nomesLista[numeroIndice]}');
    stdin.readLineSync()!;
  } on FormatException catch (e1) {
    // Valor inválido
    throw CustomException('Valor Inválido!');
  } on RangeError catch (e2) {
    // Índice inválido
    throw CustomException('Índice inválido!');
  }
}

void exibeNomes() {
  nomesLista.forEach((element) => print(element));
}

class CustomException implements Exception {
  String msg;
  CustomException(this.msg);
}
