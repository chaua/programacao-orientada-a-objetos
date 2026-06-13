/// Classe usada para demonstrar construtores comuns e construtores nomeados.
///
/// Construtor nomeado é um construtor com um nome extra depois do ponto, como:
/// Produto.criarBola()
///
/// Ele é útil quando queremos oferecer formas diferentes de criar o mesmo tipo
/// de objeto.
class Produto {
    String _nome = '';
    int _quantidade = 0;
    double _desconto = 0.0;

    /// Construtor principal.
    ///
    /// Quem cria o objeto informa todos os dados necessários.
    Produto(this._nome, this._quantidade, this._desconto);

    /// Construtor nomeado para criar um produto com desconto.
    ///
    /// Neste exemplo, o nome recebe um valor padrão apenas para simplificar.
    Produto.comDesconto(this._quantidade) {
        _nome = 'Produto com desconto';
        _desconto = 0.5;
    }

    /// Construtor nomeado que já cria um produto específico.
    ///
    /// Isso é útil quando existe um objeto muito comum no sistema.
    Produto.criarBola() {
        _nome = 'Bola';
        _quantidade = 10;
        _desconto = 0.2;
    }

    @override
    String toString() {
        return 'Produto(nome: $_nome, quantidade: $_quantidade, desconto: $_desconto)';
    }
}
