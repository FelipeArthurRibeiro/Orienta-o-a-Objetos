import 'funcionario.dart';

class Gerente extends Funcionario {
  @override
  double calculoBonificacao() {
    return salario * 0.15;   
  }
}