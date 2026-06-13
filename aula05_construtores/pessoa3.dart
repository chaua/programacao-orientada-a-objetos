/// Exemplo de construtor com forma abreviada.
///
/// Em Dart, podemos escrever [this._nome] e [this._idade] diretamente nos
/// parâmetros do construtor. Isso evita escrever atribuições manualmente.
class Pessoa3 {
    String _nome = '';
    int _idade = 0;

    /// Este construtor faz a mesma coisa que o construtor da classe Pessoa2,
    /// mas com menos código.
    Pessoa3(this._nome, this._idade);

    void imprimir() {
        print('Pessoa3 -> nome: $_nome, idade: $_idade');
    }
}
