import 'dart:io';

import 'pessoa.service.dart';
import 'pessoa_repository.dart';

void main(List<String> args) {
  PessoaService service = PessoaService(PessoaRepository());

  String opc = '';
  do {
    print(
        'Informe a opção: \n1.Cadastra \n2.Remove \n3.Buscar \n4.Listar Todos \n5.Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        break;
      case '2':
        break;
      case '3':
        break;
      case '4':
        break;
      case '5':
        break;
      default:
        print('Opção Inválida');
    }
  } while (opc != '5');
}

void cadastrar(PessoaService service) {
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;
  print('Informe o Telefone:');
  String phone = stdin.readLineSync()!;

  service.cadastrarPessoa(nome, phone);
  
}
