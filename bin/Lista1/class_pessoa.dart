class Pessoa {
  String? nome;
  int? idade;
  String? estadoCivil;
  DateTime? dataNasci;

  void mostrar() {
    print('Nome = $nome');
    print('Idade = $idade');
    print('Estado Civil = $estadoCivil');
    print('Data de Nascimento = $dataNasci');
  }
}
