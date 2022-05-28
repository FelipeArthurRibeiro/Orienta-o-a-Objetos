import 'funcionario.dart';

class Supervisor extends Funcionario {
  @override
  double calculoBonificacao() {
    return salario * 0.12;
  }
}
