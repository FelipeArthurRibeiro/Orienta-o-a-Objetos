class Pessoa2 {
  // Encapsulamento

  String? _nome; // Privado
  int? idade; // Público

  // Construtor

  Pessoa2(String nome, int idade) {
    _nome = nome;
    this.idade = idade; // this referente a classe
  }

  // setter

  set nome(String n) {
    _nome = n;
  }

  // getter

  String get nome {
    return _nome!;
  }
}
