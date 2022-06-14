class Veiculos6 {
  String? marca;
  String? modelo;
  int? anoFab;
  String? tipoCombustivel;

  Veiculos6({this.marca, this.modelo, this.anoFab, this.tipoCombustivel});

  @override
  String toString() {
    return 'Marca: $marca \nModelo: $modelo \nAno: $anoFab \nCombustível: $tipoCombustivel';
  }
}
