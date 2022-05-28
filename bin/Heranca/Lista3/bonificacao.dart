class Bonificacoes {
  double _bonificacao = 0;

  void somarBonificacao(double valor) {
    _bonificacao += valor;
  }

  double bonificacao () {
    return _bonificacao;
  }
}
