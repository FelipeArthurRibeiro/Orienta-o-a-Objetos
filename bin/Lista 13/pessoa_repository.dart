
import 'classePessoa.dart';
import 'interface_pessoa_repository.dart';

class PessoaRepository implements IPessoaRepository {
  List<Pessoa> listaPessoa = [];

  @override
  void adicionar(Pessoa pessoa) => listaPessoa.add(pessoa);

  @override
  List<Pessoa> buscar() {
    return listaPessoa;
  }

  @override
  Pessoa? buscarPorTelefone(String phone) {
    return listaPessoa.firstWhere((element) => element.phone == phone);
  }

  @override
  void removerPorTelefone(String phone) {
    listaPessoa.removeWhere((element) => element.phone == phone);
  }
}
