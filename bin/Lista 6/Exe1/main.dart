import 'artista.dart';
import 'atleta.dart';
import 'compositor.dart';
import 'engenheiro.dart';
import 'lutador.dart';
import 'pessoa.dart';
import 'seguranca.dart';

void main(List<String> args) {
  print('== ARTISTA ==');
  Artista artista = Artista();
  artista.canta('letra');
  artista.danca(500);
  print('');

  print('== ENGENHEIRO ==');
  Engenheiro engenheiro = Engenheiro();
  engenheiro.escrever('texto');
  engenheiro.ler('topico');
  print('');

  print('== ATLETA ==');
  Atleta atleta = Atleta();
  atleta.correr(8);
  atleta.levantarPeso(10);
  print('');

  print('== LUTADOR ==');
  Lutador lutador = Lutador();
  lutador.soco(300);
  print('');

  print('== COMPOSITOR ==');
  Compositor compositor = Compositor();
  compositor.canta('letra');
  compositor.escrever('texto');
  compositor.ler('topico');
  print('');

  print('== SEGURANÇA ==');
  Seguranca seguranca = Seguranca();
  seguranca.soco(20);
  seguranca.correr(50);
  seguranca.levantarPeso(55);
  print('');
}
