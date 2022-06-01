import 'dart:math';

import 'formaGeometrica.dart';

class Circulo implements FormaGeometrica {
  double raio;

  Circulo({required this.raio});

  @override
  double calcArea() {
    return pi * (raio * raio);
  }

  @override
  double calcPerimetro() {
    return 2 * pi * raio; 
  }
}
