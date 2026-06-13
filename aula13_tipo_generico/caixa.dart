/// Classe genérica chamada Caixa.
///
/// O <T> representa um tipo que será escolhido quando o objeto for criado.
/// Isso permite reaproveitar a mesma classe para guardar int, double, String,
/// Conta ou qualquer outro tipo.
class Caixa<T> {
    // late indica que a variável será inicializada depois,
    // antes de ser usada pela primeira vez.
    late T _coisa;

    /// Construtor que recebe o primeiro item da caixa.
    Caixa(T item) {
        _coisa = item;
    }

    /// Substitui o conteúdo da caixa.
    void adicionar(T item) {
        _coisa = item;
    }

    /// Imprime o conteúdo atual da caixa.
    void imprimir() {
        print(_coisa);
    }
}
