import 'dart:io';

import 'bonificacao2.dart';
import 'engenheiro2.dart';
import 'funcionario2.dart';
import 'gerente2.dart';
import 'supervisor2.dart';

List<Funcionario2> listaFuncionarios = [];

void main(List<String> args) {
  String opc = '';
  do {
    print(
        'Informe a opção: \n1.Cadastrar Funcionario \n2.Cadastrar Gerente \n3.Cadastrar Engenheiro \n4.Cadastrar Supervisor \n5.Sair');
    opc = stdin.readLineSync()!;
    switch (opc) {
      case '1':
        cadastrar(1);
        break;
      case '2':
        cadastrar(2);
        break;
      case '3':
        cadastrar(3);
        break;
      case '4':
        cadastrar(4);
        break;
      case '5':
        break;
      default:
        print('Opção Inválida');
    }
  } while (opc != '5');

  mostrar();
}

void cadastrar(int opc) {
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;

  print('Informe o CPF:');
  String cpf = stdin.readLineSync()!;

  print('Informe o salário:');
  double salario = double.parse(stdin.readLineSync()!);

  Funcionario2? funcionario;
  switch (opc) {
    case 1:
      funcionario = Funcionario2();
      break;
    case 2:
      funcionario = Gerente2();
      break;
    case 3:
      funcionario = Engenheiro2();
      break;
    case 4:
      funcionario = Supervisor2();
      break;
  }
  if (funcionario != null) {
    funcionario.nome = nome;
    funcionario.cpf = cpf;
    funcionario.salario = salario;
    listaFuncionarios.add(funcionario);
  } else {
    print('Tipo inválido');
  }
}

void mostrar() {
  Bonificacoes2 boni = Bonificacoes2();
  for (Funcionario2 funcionario in listaFuncionarios) {
    if (funcionario is Gerente2) {
      print('Gerente $funcionario');
    } else if (funcionario is Engenheiro2) {
      print('Engenheiro $funcionario');
    } else if (funcionario is Supervisor2) {
      print('Supervisor $funcionario');
    } else {
      print('Funcionario $funcionario');
    }

    double bonificacao = funcionario.calculoBonificacao();
    print('Sua Bonificação é: $bonificacao');
    boni.somarBonificacao(bonificacao);
    
  }
  print('Valor total das bonificações: ${boni.bonificacao()}');
}
