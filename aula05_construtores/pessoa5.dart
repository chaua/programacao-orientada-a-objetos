/// Exemplo de construtor com parâmetros nomeados opcionais.
///
/// Parâmetros nomeados usam chaves no construtor e deixam a chamada mais clara:
/// Pessoa5(nome: 'Magali', idade: 7)
class Pessoa5 {
    String _nome = '';
    int _idade = 0;

    /// Os valores depois do sinal = são valores padrão.
    ///
    /// Se a pessoa que cria o objeto não informar um valor, o Dart usa o valor padrão.
    Pessoa5({String nome = '', int idade = 0}) {
        _nome = nome;
        _idade = idade;
    }

    void imprimir() {
        print('Pessoa5 -> nome: $_nome, idade: $_idade');
    }
}
