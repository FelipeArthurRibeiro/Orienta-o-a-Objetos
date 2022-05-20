import 'dart:io';

import 'class_pessoa.dart';

void main(List<String> args) {
  List<Pessoa> listaPessoas = [];

  for (int contador = 0; contador < 3; contador++) {
    print('Informe seu nome:');
    String nome = stdin.readLineSync()!;

    print('Informe sua idade:');
    int idade = int.parse(stdin.readLineSync()!);

    print('Informe seu Estado Civil:');
    String estadoCivil = stdin.readLineSync()!;

    print('Informe sua data de nascimento: ano - mes - dia');
    DateTime dataNasci = DateTime.parse(stdin.readLineSync()!);

    Pessoa? pessoa = Pessoa();

    pessoa.nome = nome;
    pessoa.idade = idade;
    pessoa.estadoCivil = estadoCivil;
    pessoa.dataNasci = dataNasci;

    listaPessoas.add(pessoa);
  }

  print('');

  for (int i = 0; i < listaPessoas.length; i++) {
    listaPessoas[i].mostrar();
  }
}
