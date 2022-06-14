import 'package:intl/intl.dart';

class Pessoa {
  String? nome;
  int? idade;
  String? estadoCivil;
  DateTime? dataNasci;

  void mostrar() {
    DateFormat df = DateFormat('dd/MM/yyyy');
    String dtNascStr = df.format(dataNasci!);
    'Nome = $nome \n Idade = $idade Estado Civil = $estadoCivil Data de Nascimento = $dtNascStr';
    print('Idade = $idade');
    print('Estado Civil = $estadoCivil');
    print('Data de Nascimento = $dtNascStr');
  }

  @override
  String toString() {
    DateFormat df = DateFormat('dd/MM/yyyy');
    String dtNascStr = df.format(dataNasci!);
    return 'Nome = $nome \nIdade = $idade \nEstado Civil = $estadoCivil \nData de Nascimento = $dtNascStr';
  }

}
