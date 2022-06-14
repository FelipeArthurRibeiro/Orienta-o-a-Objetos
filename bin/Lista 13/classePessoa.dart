class Pessoa {
  String? nome;
  String? phone;

  Pessoa(this.nome, this.phone);

  @override
  String toString() {
    return 'Nome: $nome \nPhone: $phone';
  }
}
