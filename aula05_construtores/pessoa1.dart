/// Exemplo de classe com construtor default.
///
/// Construtor default é o construtor vazio, usado quando criamos o objeto assim:
/// Pessoa1()
///
/// Quando a classe não declara nenhum construtor, o Dart cria um construtor vazio
/// automaticamente.
class Pessoa1 {
    // O underline indica que o atributo é privado dentro deste arquivo.
    // Atributos privados ajudam a proteger os dados internos do objeto.
    String _nome = '';
    int _idade = 0;

    /// Método simples para visualizar o estado do objeto.
    ///
    /// Estado significa o conjunto de valores guardados nos atributos.
    void imprimir() {
        print('Pessoa1 -> nome: $_nome, idade: $_idade');
    }
}
