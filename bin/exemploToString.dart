void main(List<String> args) {
  Cidade cidade1 = Cidade();
  cidade1.nome = 'Blumenau';

  print(cidade1);
}

class Cidade {
  String? nome;

  @override
  String toString() {
    return '>>>>>>>>>$nome'; 
  } 
}
