import 'dart:io';

import 'package:intl/intl.dart';

import 'class_pessoa.dart';

void main(List<String> args) {
  List<Pessoa> listaPessoas = [];

  DateFormat df = DateFormat('dd/MM/yyyy');

  for (int contador = 0; contador < 3; contador++) {
    print('Informe seu nome:');
    String nome = stdin.readLineSync()!;

    print('Informe sua idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Informe seu Estado Civil:');
    String estadoCivil = stdin.readLineSync()!;

    print('Informe sua data de nascimento: (Ex. 20/12/2010)');
    String dataNasci = stdin.readLineSync()!;

    Pessoa? pessoa = Pessoa();

    pessoa.nome = nome;
    pessoa.idade = idade;
    pessoa.estadoCivil = estadoCivil;
    pessoa.dataNasci = df.parse(dataNasci);

    listaPessoas.add(pessoa);
  }

  print('');

  for (int i = 0; i < listaPessoas.length; i++) {
    listaPessoas[i].mostrar();
    print('');
  }
}
