import 'classePessoa.dart';
import 'interface_pessoa_repository.dart';

class PessoaService {
  late IPessoaRepository repository;

  PessoaService(this.repository);

  void cadastrarPessoa(String nome, String phone) {
    Pessoa p = Pessoa(nome, phone);
    if (buscarPorTelefone(phone) == null) {  //Regras de negócio
      repository.adicionar(p);
    } else {
      throw Exception('Telefone já cadastrado');
    }
  }

  Pessoa? buscarPorTelefone(String phone) {
    return repository.buscarPorTelefone(phone);
  }

  List<Pessoa> buscarTodos() {
    return repository.buscar();
  }

  void removePorTelefone(String phone) {
    repository.removerPorTelefone(phone);
  }
}
