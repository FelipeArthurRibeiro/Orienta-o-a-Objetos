import 'real.dart';

extension RealExt on Real {
  int toInt() {
    return valor.toInt();
  }

  String paraString() {
    return valor.toString();
  }

  String paraToStringAsFixed(int digits) {
    return valor.toStringAsFixed(digits);
  }

  void deString(String value) {
    valor = double.parse(value);
  }
}
