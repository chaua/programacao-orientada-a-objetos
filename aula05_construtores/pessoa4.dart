/// Exemplo de construtor com validação.
///
/// Validar significa conferir se o valor recebido faz sentido antes de gravar
/// esse valor no atributo do objeto.
class Pessoa4 {
    String _nome = '';
    int _idade = 0;

    /// O nome é guardado diretamente.
    /// A idade só é guardada se for maior ou igual a zero.
    Pessoa4(this._nome, int idade) {
        if (idade >= 0) {
            _idade = idade;
        }
    }

    void imprimir() {
        print('Pessoa4 -> nome: $_nome, idade: $_idade');
    }
}
