void main(List<String> args) {
  int valor = -10;
  print('Positivo: ${valor.ePositivo()}');
  print('Negativo: ${valor.eNegativo()}');
}

extension IntExt on int {
  bool ePositivo() {
    return this >= 0 ? true : false;
  }

  bool eNegativo() {
    return this < 0 ? true : false;
  }

  /*
  bool eNegativo() {
    if(this < 0){
      return true;
    }
    return false;
  }
  */
}
