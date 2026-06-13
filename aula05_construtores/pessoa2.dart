/// Exemplo de construtor com inicialização manual.
///
/// Aqui, o construtor recebe valores em parâmetros e copia esses valores para
/// os atributos do objeto dentro do corpo do construtor.
class Pessoa2 {
    String _nome = '';
    int _idade = 0;

    /// Construtor com dois parâmetros posicionais.
    ///
    /// Parâmetros posicionais dependem da ordem.
    /// Pessoa2('Batman', 40) significa nome = Batman e idade = 40.
    Pessoa2(String nome, int idade) {
        _nome = nome;
        _idade = idade;
    }

    void imprimir() {
        print('Pessoa2 -> nome: $_nome, idade: $_idade');
    }
}
