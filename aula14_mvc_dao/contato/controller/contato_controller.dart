import '../dao/contato_dao.dart';
import '../model/contato.dart';
import '../view/contato_view.dart';

/// Controller significa controlador.
///
/// No MVC, o Controller coordena o fluxo do programa.
/// Ele pergunta algo para a View, chama o DAO quando precisa acessar dados
/// e decide qual mensagem mostrar depois de cada operação.
class ContatoController {
  final ContatoView _view = ContatoView();
  final ContatoDao _dao = ContatoDao();

  /// Executa o menu principal até o usuário escolher sair.
  void executar() {
    bool terminou = false;

    while (!terminou) {
      _view.exibirMenu();
      int opcao = _view.lerOpcao();

      switch (opcao) {
        case 1:
          _cadastrarContato();
          break;
        case 2:
          _listarContatos();
          break;
        case 3:
          _atualizarContato();
          break;
        case 4:
          _deletarContato();
          break;
        case 9:
          terminou = true;
          break;
        default:
          _view.exibirOpcaoInvalida();
      }

      print('');
    }
  }

  /// CREATE: pede os dados para a View e manda o DAO cadastrar.
  void _cadastrarContato() {
    Contato contato = _view.lerContato();
    _dao.cadastrar(contato);
    _view.exibirMensagem('Contato cadastrado com sucesso.');
  }

  /// READ: pede a lista ao DAO e manda a View mostrar.
  void _listarContatos() {
    List<Contato> contatos = _dao.listar();
    _view.exibirContatos(contatos);
  }

  /// UPDATE: lista os contatos, lê o índice e envia a alteração ao DAO.
  void _atualizarContato() {
    List<Contato> contatos = _dao.listar();
    _view.exibirContatos(contatos);

    if (contatos.isEmpty) {
      return;
    }

    int indice = _view.lerIndice();
    Contato novoContato = _view.lerContato();

    bool atualizou = _dao.atualizar(indice, novoContato);

    if (atualizou) {
      _view.exibirMensagem('Contato atualizado com sucesso.');
    } else {
      _view.exibirMensagem('Contato não encontrado.');
    }
  }

  /// DELETE: lista os contatos, lê o índice e pede ao DAO para remover.
  void _deletarContato() {
    List<Contato> contatos = _dao.listar();
    _view.exibirContatos(contatos);

    if (contatos.isEmpty) {
      return;
    }

    int indice = _view.lerIndice();
    bool deletou = _dao.deletar(indice);

    if (deletou) {
      _view.exibirMensagem('Contato deletado com sucesso.');
    } else {
      _view.exibirMensagem('Contato não encontrado.');
    }
  }
}
