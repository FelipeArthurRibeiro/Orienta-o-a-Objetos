import 'classePessoa.dart';

abstract class IPessoaRepository {
  void adicionar(Pessoa pessoa);

  void removerPorTelefone(String phone) {}

  Pessoa? buscarPorTelefone(String phone);

  List<Pessoa> buscar();
}
