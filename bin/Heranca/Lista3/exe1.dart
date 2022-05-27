import 'dart:io';

import 'funcionario.dart';
import 'gerente.dart';

List<Funcionario> listaFuncionarios = [];
List<Gerente> listaGerentes = [];

void main(List<String> args) {
  String opc = '';

  do {
    print(
        'Informe a opção: \n1.Cadastrar Funcionario \n2. Cadastrar Gerente \n3.Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        adicionaFuncionario(listaFuncionarios);
        break;
      case '2':
        adicionaGerente(listaGerentes);
        break;
    }
  } while (opc != '3');

  for (int i = 0; i > listaFuncionarios.length; i++) {
    print(listaFuncionarios[i]);

    print('Sua bonicificação foi de: ');
  }
}

void adicionaFuncionario(List<Funcionario> listaFuncionarios) {
  Funcionario funcionarios = Funcionario();
  print('Informe o nome do Funcionario:');
  funcionarios.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do funcionario:');
  funcionarios.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do funcionario:');
  funcionarios.salario = double.parse(stdin.readLineSync()!);
  listaFuncionarios.add(funcionarios);
}

void adicionaGerente(List<Gerente> listaGerentes) {
  Gerente gerentes = Gerente();
  print('Informe o nome do Gerente:');
  gerentes.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do gerente');
  gerentes.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do gerente');
  gerentes.salario = double.parse(stdin.readLineSync()!);
  listaGerentes.add(gerentes);
}

void mostrar() {
  for (Funcionario funcionarios in listaFuncionarios) {
    print(funcionarios);
    print(funcionarios.calculoBonificacao());
  }

  for (Gerente gerentes in listaGerentes) {
    print(gerentes);
    print(gerentes.calculoBonificacao());
  }
}
