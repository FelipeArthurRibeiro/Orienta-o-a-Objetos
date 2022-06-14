import 'veiculos5.dart';

void main(List<String> args) {
  Veiculo5 carro1 = Veiculo5.gasolina(modelo: 'Gol');
  print(carro1);

  print('');

  Veiculo5 carro2 = Veiculo5.flex(modelo: 'Palio Weekend');
  print(carro2);

  print('');

  Veiculo5 carro3 = Veiculo5.diesel(modelo: 'JEEP Renegade');
  print(carro3);
}
