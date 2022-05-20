import 'package:intl/intl.dart';

class Pessoa {
  String? nome;
  int? idade;
  String? estadoCivil;
  DateTime? dataNasci;

  void mostrar() {
    DateFormat df = DateFormat('dd/MM/yyyy');
    String dtNascStr = df.format(dataNasci!);
    print('Nome = $nome');
    print('Idade = $idade');
    print('Estado Civil = $estadoCivil');
    print('Data de Nascimento = $dtNascStr');
  }
}
