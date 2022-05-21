import 'pessoa.dart';

void main(List<String> args) {
  Pessoa2 pessoa1 = Pessoa2('Maria', 20);
  pessoa1.nome = 'Maria';
  pessoa1.idade = 14;

  print(pessoa1.nome);
  print(pessoa1.idade);
}
