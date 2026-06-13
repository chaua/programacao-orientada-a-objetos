import 'endereco.dart';

/// Classe que representa um cliente.
///
/// Este exemplo demonstra composição.
/// Composição ocorre quando uma classe cria e controla outra classe internamente.
///
/// Neste caso, o Cliente possui um Endereco criado dentro dele.
class Cliente {
    String _nome = '';
    String _cpf = '';

    // Objeto criado internamente.
    // Como é privado, quem usa Cliente não acessa o Endereco diretamente.
    Endereco _endereco = Endereco();

    /// Construtor do cliente.
    Cliente(this._nome, this._cpf);

    /// Setter que permite alterar a rua do endereço sem expor o objeto Endereco.
    ///
    /// Isso é chamado de delegação: Cliente recebe a solicitação e repassa para Endereco.
    set rua(String rua) {
        _endereco.rua = rua;
    }

    /// Getter para consultar a rua do endereço.
    String get rua {
        return _endereco.rua;
    }

    @override
    String toString() {
        return 'Cliente(nome: $_nome, cpf: $_cpf, rua: ${_endereco.rua})';
    }
}
