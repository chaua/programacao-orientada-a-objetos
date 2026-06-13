import '../model/contato.dart';
import '../view/contato_view.dart';

/// Controller do exemplo MVC sem DAO.
///
/// Neste exemplo, os contatos ficam apenas em memória.
/// Isso significa que, ao encerrar o programa, os dados são perdidos.
class ContatoController {
    final ContatoView _view = ContatoView();
    final List<Contato> _contatos = [];

    /// Executa o menu até o usuário escolher sair.
    void executar() {
        bool terminou = false;

        while (!terminou) {
            _view.exibirMenu();
            int opcao = _view.lerOpcao();

            switch (opcao) {
                case 1:
                    _registrarContato();
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
        }
    }

    void _registrarContato() {
        Contato contato = _view.lerContato();
        _contatos.add(contato);
        _view.exibirMensagem('Contato cadastrado em memória.');
    }

    void _listarContatos() {
        _view.exibirContatos(_contatos);
    }

    void _atualizarContato() {
        _view.exibirContatos(_contatos);
        int indice = _view.lerIndice();

        if (indice < 0 || indice >= _contatos.length) {
            _view.exibirMensagem('Contato não encontrado.');
            return;
        }

        _contatos[indice] = _view.lerContato();
        _view.exibirMensagem('Contato atualizado.');
    }

    void _deletarContato() {
        _view.exibirContatos(_contatos);
        int indice = _view.lerIndice();

        if (indice < 0 || indice >= _contatos.length) {
            _view.exibirMensagem('Contato não encontrado.');
            return;
        }

        _contatos.removeAt(indice);
        _view.exibirMensagem('Contato removido.');
    }
}
