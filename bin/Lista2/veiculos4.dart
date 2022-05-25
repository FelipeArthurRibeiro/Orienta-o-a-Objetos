class Veiculo4 {
  String? marca;
  String? modelo;
  int? anoModelo;
  int? anoFabricacao;

  Veiculo4(
      {this.marca,
      this.modelo,
      this.anoModelo,
      this.anoFabricacao});

  set marca1(String? marca) {
    this.marca = marca;
  }

  String? get marca1 {
    return marca;
  }

  set modelo1(String? modelo) {
    this.modelo = modelo;
  }

  String? get modelo1 {
    return modelo;
  }

  set anoModelo1(int? anoModelo) {
    this.anoModelo = anoModelo;
  }

  int? get anoModelo1 {
    return anoModelo;
  }

  set anoFabricacao1(int? anoFabricacao) {
    this.anoFabricacao = anoFabricacao;
  }

  int? get anoFabricacao1 {
    return anoFabricacao;
  }

  @override
  String toString() {
    return 'Marca = $marca \nModelo = $modelo \nAno modelo = $anoModelo \nAno fabricação = $anoFabricacao';
  }

}
