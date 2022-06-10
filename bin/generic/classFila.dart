class Fila<T> {
  List<T> _lista = [];

  insert(T value) {
    _lista.add(value);
  }

  T? remove() {
    return _lista.isNotEmpty ? _lista.removeAt(0) : null;
  }
  /*
  int get lenght {
    return _listaFIFO.length;
  }

  void removeWhere(bool Function(FIFO) func) {
    _listaFIFO.removeWhere(func);
  }
  */
}
