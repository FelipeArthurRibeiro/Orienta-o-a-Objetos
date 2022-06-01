import 'dart:io';

import 'conta.dart';
import 'contaCorrente.dart';
import 'contaPoupanca.dart';

void main(List<String> args) {
  Conta cc = ContaCorrente();
  cc.depositar(100);
  print('Conta Corrente');
  if (cc.sacar(100)) {
    print('Saque realizado com sucesso');
    print('Saldo Restante: ${cc.saldo}');
  } else {
    print('Saldo Insuficiente');
  }

  print('');

  Conta cp = ContaPoupanca();
  cp.depositar(100);
  print('Conta Poupança');
  if (cp.sacar(100)) {
    print('Saque realizado com sucesso');
    print('Saldo restante: ${cp.saldo}');
  } else {
    print('Saldo Insuficiente');
  }
}
