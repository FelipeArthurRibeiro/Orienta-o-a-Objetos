import 'real.dart';
import 'metodos.dart';

void main(List<String> args) {
  Real real = Real();
  //real.valor = 10.9;

  real.deString('12.234');
  print(real.toInt());
  print(real.paraString());
  print(real.paraToStringAsFixed(2));
}
