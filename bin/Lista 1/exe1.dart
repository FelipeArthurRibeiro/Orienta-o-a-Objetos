import 'class_pessoa.dart';

void main(List<String> args) {
  Pessoa? pessoa1 = Pessoa();
  Pessoa? pessoa2 = Pessoa();
  Pessoa? pessoa3 = Pessoa();

  // Pessoa 1
  pessoa1.nome = 'Maria Silva';
  pessoa1.idade = 19;
  pessoa1.estadoCivil = 'Casada';

  // Pessoa 2
  pessoa2.nome = 'João Pereira';
  pessoa2.idade = 50;
  pessoa2.estadoCivil = 'Solteiro';

  // Pessoa3

  pessoa3.nome = 'Manuela Gomes';
  pessoa3.idade = 34;

  pessoa1.mostrar();
  pessoa2.mostrar();
  pessoa3.mostrar();
}
