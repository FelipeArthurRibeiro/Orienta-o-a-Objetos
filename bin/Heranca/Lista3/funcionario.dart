class Funcionario {
  String? nome;
  String? cpf;
  double salario = 0;

  double calculoBonificacao() {
    return salario * 0.1;
  }

  @override
  String toString() {
    return 'Nome: $nome \nCPF: $cpf \nSalário: $salario';
  }
}
