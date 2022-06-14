class Veiculo5 {
  String? modelo;
  String? tipoCombustivel;

  Veiculo5({this.modelo});

  Veiculo5.gasolina({required this.modelo}) {
    tipoCombustivel = 'Gasolina';
  }

  Veiculo5.flex({required this.modelo}) {
    tipoCombustivel = 'Flex';
  }

  Veiculo5.diesel({required this.modelo}) {
    tipoCombustivel = 'Diesel';
  }

  @override
  String toString() {
    return 'Modelo = $modelo \nCombustivel = $tipoCombustivel';
  }

}
