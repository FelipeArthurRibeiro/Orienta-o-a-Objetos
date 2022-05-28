import 'funcionario2.dart';

class Engenheiro2 extends Funcionario2 {
  @override
  double calculoBonificacao() {
    return salario * 0.14;
  }
}