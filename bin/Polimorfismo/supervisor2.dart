import 'funcionario2.dart';

class Supervisor2 extends Funcionario2 {
  @override
  double calculoBonificacao() {
    return salario * 0.12;
  }
}
