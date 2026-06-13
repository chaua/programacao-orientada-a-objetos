/// Exemplo de construtor com parâmetro nomeado obrigatório.
///
/// A palavra [required] obriga quem cria o objeto a informar aquele valor.
class Pessoa6 {
    String _nome = '';
    int _idade = 0;

    /// O nome é obrigatório.
    /// A idade é opcional e, se não for informada, começa com zero.
    Pessoa6({required String nome, int idade = 0}) {
        _nome = nome;
        _idade = idade;
    }

    void imprimir() {
        print('Pessoa6 -> nome: $_nome, idade: $_idade');
    }
}
