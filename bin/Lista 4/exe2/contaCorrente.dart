import 'conta.dart';

class ContaCorrente implements Conta {
  double _saldo = 0;
  double limite = 200.00;

  double get saldo => _saldo;
  bool depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      return true;
    }
    return false;
  }

  bool sacar(double valor) {
    if (valor > 0 && valor <= (_saldo + limite)) {
      _saldo -= valor;
      return true;
      }
    return false;
  }
}
