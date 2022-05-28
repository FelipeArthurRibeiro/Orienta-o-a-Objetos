import 'funcionario2.dart';

class Gerente2 extends Funcionario2 {
  @override
  double calculoBonificacao() {
    return salario * 0.15;
  }
}
