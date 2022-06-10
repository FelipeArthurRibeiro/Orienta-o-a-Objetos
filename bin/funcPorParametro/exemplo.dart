void main(List<String> args) {
  buscarNomes((List nomes) {
        for (String n in nomes) {
          print(n);
        }
      });
}

void buscarNomes(void Function(List lista) func) {
  List listaNomes = ['Leo', 'Jim', 'Bia'];
  func(listaNomes);
}

/*
void mostrar(List nomes) {
  for (String n in nomes) {
    print(n);
  }
}
*/