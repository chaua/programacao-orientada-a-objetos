/// Classe que representa um endereço.
///
/// Ela é usada dentro da classe Cliente para demonstrar composição.
class Endereco {
    String _rua = '';
    int _numero = 0;
    String _bairro = '';
    String _cidade = '';
    String _estado = '';

    /// Construtor com parâmetros nomeados opcionais.
    ///
    /// Todos os parâmetros possuem valores padrão para evitar valores nulos.
    Endereco({
        String rua = '',
        int numero = 0,
        String bairro = '',
        String cidade = '',
        String estado = '',
    }) {
        _rua = rua;
        _numero = numero;
        _bairro = bairro;
        _cidade = cidade;
        _estado = estado;
    }

    /// Setter da rua.
    set rua(String valor) {
        _rua = valor;
    }

    /// Getter da rua.
    String get rua {
        return _rua;
    }

    @override
    String toString() {
        return '$_rua, $_numero - $_bairro - $_cidade/$_estado';
    }
}
