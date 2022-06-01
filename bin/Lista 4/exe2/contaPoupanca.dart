import 'conta.dart';

class ContaPoupanca implements Conta {
  double _saldo = 0;

  double get saldo => _saldo;
  bool depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      return true;
    }
    return false;
  }

  bool sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}
