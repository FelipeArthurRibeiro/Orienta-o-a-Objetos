import 'funcionario.dart';

class Engenheiro extends Funcionario {
  @override
  double calculoBonificacao() {
    return salario * 0.14;
  }
}
