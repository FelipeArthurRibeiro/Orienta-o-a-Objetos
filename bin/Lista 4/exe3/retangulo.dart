import 'formaGeometrica.dart';

class Retangulo implements FormaGeometrica {
  double base;
  double altura;

  Retangulo({required this.base, required this.altura});

  @override
  double calcPerimetro() {
    return (base * 2) + (altura * 2);
  }

  @override
  double calcArea() {
    return base * altura;
  }
}
