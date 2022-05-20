import 'pessoa.dart';

void main(List<String> arguments) {
  Pessoa? pessoa1 = Pessoa(); // Criar o objeto
  Pessoa? pessoa2 = Pessoa();
  Pessoa? pessoa3 = Pessoa();
  Pessoa? pessoa4 = Pessoa();

  pessoa1.nome = 'Maria';
  pessoa2.nome = 'João';
  pessoa3.nome = 'Humberto';
  pessoa4.nome = 'Mário';
  //pessoa1.idade = 20;
  //print(pessoa1.idade);
  //pessoa1.acordar();
  //pessoa1.apresentese();
  print(pessoa1.nome);
  print(pessoa2.nome);
  print(pessoa3.nome);
  print(pessoa4.nome);
}
