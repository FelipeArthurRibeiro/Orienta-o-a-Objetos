class Veiculo {
  String? _marca; //Exe1
  String? _modelo;
  int? _anoModelo;
  int? _anoFabricacao;

  Veiculo(this._marca, this._modelo, this._anoModelo, this._anoFabricacao);

  set marca(String? marca) {
    _marca = marca;
  }

  String? get marca {
    return _marca;
  }

  set modelo(String? modelo) {
    _modelo = modelo;
  }

  String? get modelo {
    return _modelo;
  }

  set anoModelo(int? anoModelo) {
    _anoModelo = anoModelo;
  }

  int? get anoModelo {
    return _anoModelo;
  }

  set anoFabricacao(int? anoFabricacao) {
    _anoFabricacao = anoFabricacao;
  }

  int? get anoFabricacao {
    return _anoFabricacao;
  }

  @override
  String toString() {
    return 'Marca = $marca \nModelo = $modelo \nAno modelo = $anoModelo \nAno fabricação = $anoFabricacao';
  }
}
