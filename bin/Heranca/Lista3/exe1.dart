import 'dart:io';

import 'bonificacao.dart';
import 'engenheiro.dart';
import 'funcionario.dart';
import 'gerente.dart';
import 'supervisor.dart';

List<Funcionario> listaFuncionarios = [];
List<Gerente> listaGerentes = [];
List<Engenheiro> listaEngenheiro = [];
List<Supervisor> listaSupervisor = [];
Bonificacoes boni = Bonificacoes();
void main(List<String> args) {
  String opc = '';

  do {
    print(
        'Informe a opção: \n1.Cadastrar Funcionario \n2.Cadastrar Gerente \n3.Cadastrar Engenheiro \n4.Cadastrar Supervisor \n5.Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        adicionaFuncionario(listaFuncionarios);
        break;
      case '2':
        adicionaGerente(listaGerentes);
        break;
      case '3':
        adicionaEngenheiro(listaEngenheiro);
        break;
      case '4':
        adicionaSupervisor(listaSupervisor);
        break;
      case '5':
        break;
        default:
          print('Opção Inválida');
    }
  } while (opc != '5');

  mostrar();
}

void adicionaFuncionario(List<Funcionario> listaFuncionarios) {
  Funcionario funcionario = Funcionario();
  print('Informe o nome do Funcionario:');
  funcionario.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do funcionario:');
  funcionario.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do funcionario:');
  double valor = double.parse(stdin.readLineSync()!);
  funcionario.salario = valor;
  valor = funcionario.calculoBonificacao();
  boni.somarBonificacao(valor);
  listaFuncionarios.add(funcionario);
}

void adicionaGerente(List<Gerente> listaGerentes) {
  Gerente gerente = Gerente();
  print('Informe o nome do Gerente:');
  gerente.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do gerente');
  gerente.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do gerente');
  double valor = double.parse(stdin.readLineSync()!);
  gerente.salario = valor;
  valor = gerente.calculoBonificacao();
  boni.somarBonificacao(valor);
  listaGerentes.add(gerente);
}

void adicionaEngenheiro(List<Engenheiro> listaEngenheiro) {
  Engenheiro engenheiro = Engenheiro();
  print('Informe o nome do Engenheiro:');
  engenheiro.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do Engenheiro');
  engenheiro.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do Engenheiro');
  double valor = double.parse(stdin.readLineSync()!);
  engenheiro.salario = valor;
  valor = engenheiro.calculoBonificacao();
  boni.somarBonificacao(valor);
  listaEngenheiro.add(engenheiro);
}

void adicionaSupervisor(List<Supervisor> listaSupervisor) {
  Supervisor supervisor = Supervisor();
  print('Informe o nome do Supervisor:');
  supervisor.nome = stdin.readLineSync()!;
  print('');
  print('Informe o CPF do Supervisor');
  supervisor.cpf = stdin.readLineSync()!;
  print('');
  print('Informe o salário do Supervisor');
  double valor = double.parse(stdin.readLineSync()!);
  supervisor.salario = valor;
  valor = supervisor.calculoBonificacao();
  boni.somarBonificacao(valor);
  listaSupervisor.add(supervisor);
}

void mostrar() {
  for (Funcionario funcionarios in listaFuncionarios) {
    print('== FUNCIONARIO ==');
    print(funcionarios);
    print('Bonificação: ${funcionarios.calculoBonificacao()}');
    print('');
  }

  for (Gerente gerente in listaGerentes) {
    print('== GERENTE ==');
    print(gerente);
    print('Bonificação: ${gerente.calculoBonificacao()}');
    print('');
  }

  for (Engenheiro engenheiro in listaEngenheiro) {
    print('== ENGENHEIRO ==');
    print(engenheiro);
    print('Bonificação: ${engenheiro.calculoBonificacao()}');
    print('');
  }

  for (Supervisor supervisor in listaSupervisor) {
    print('== SUPERVISOR ==');
    print(supervisor);
    print('Bonificação: ${supervisor.calculoBonificacao()}');
    print('');
  }

  print('Valor total das bonificações: ${boni.bonificacao()}');
}
