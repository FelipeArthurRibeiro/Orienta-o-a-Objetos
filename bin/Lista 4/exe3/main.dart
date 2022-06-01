import 'dart:io';

import 'circulo.dart';
import 'formaGeometrica.dart';
import 'quadrado.dart';
import 'retangulo.dart';

List<FormaGeometrica> listFormas = [];
void main(List<String> args) {
  print('Informe quantas formas geometricas devem ser criadas:');
  int qtd = int.parse(stdin.readLineSync()!);
  if (qtd != null) {
    for (int contador = 0; contador < qtd; contador++) {
      String opc = '';
      print('Informe: \n1.Retângulo \n2.Quadrado \n3.Circulo');
      opc = stdin.readLineSync()!;

      switch (opc) {
        case '1':
          addRetangulo();
          break;
        case '2':
          addQuadrado();
          break;
        case '3':
          break;
        default:
          print('Opção inválida');
          break;
      }
    }
  } else {
    print('Quantidade Inválida');
  }
}

double? solicitaValor(String msg) {
  
}

void addRetangulo() {
  print('Informe a  base:');
  double base = double.parse(stdin.readLineSync()!);
  print('Informe a altura');
  double altura = double.parse(stdin.readLineSync()!);

  Retangulo retangulo = Retangulo(base: base, altura: altura);
  listFormas.add(retangulo);
}

void addQuadrado() {
  print('Informe um lado do quadrado:');
  double lado = double.parse(stdin.readLineSync()!);

  Quadrado quadrado = Quadrado(lado: lado);
  listFormas.add(quadrado);
}

void addCirculo() {
  print('Informe o raio do circulo');
  double raio = double.parse(stdin.readLineSync()!);

  Circulo circulo = Circulo(raio: raio);
  listFormas.add(circulo);
}
