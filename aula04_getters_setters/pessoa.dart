/// Classe que representa uma pessoa.
///
/// Este exemplo mostra o uso de atributos, construtor, método, getter e setter.
/// Getter e setter são usados para controlar o acesso aos dados do objeto.
class Pessoa {
    // Atributo público: pode ser acessado diretamente fora da classe.
    // Neste exemplo, o nome ficou público para simplificar.
    String nome = '';

    // Atributo privado: o underline no começo do nome indica privacidade em Dart.
    // Fora deste arquivo, ninguém acessa _idade diretamente.
    // Isso é útil para impedir valores inválidos.
    int _idade = 0;

    /// Setter da idade.
    ///
    /// Setter parece uma atribuição comum, como:
    /// pessoa.idade = 20;
    ///
    /// Porém, por trás dessa sintaxe, o Dart chama este bloco de código.
    /// Assim, conseguimos validar o valor antes de alterar o atributo privado.
    set idade(int valor) {
        // Só aceita idade positiva.
        // Se o valor for negativo ou zero, o objeto ignora a alteração.
        if (valor > 0) {
            _idade = valor;
        }
    }

    /// Getter da idade.
    ///
    /// Getter permite ler um valor como se fosse um atributo comum:
    /// print(pessoa.idade);
    ///
    /// A diferença é que o valor vem de um método controlado pela classe.
    int get idade => _idade;

    /// Construtor da classe Pessoa.
    ///
    /// O nome é inicializado diretamente com [this.nome].
    /// A idade é recebida em uma variável local e depois validada pelo setter.
    Pessoa(this.nome, int novaIdade) {
        idade = novaIdade;
    }

    /// Mostra os dados da pessoa na tela.
    void imprime() {
        print('Nome....: $nome');
        print('Idade...: $idade');
    }

    /// Simula o aniversário da pessoa.
    ///
    /// O operador ++ aumenta o valor em 1.
    /// Como usamos [idade] e não [_idade], a alteração passa pelo setter.
    void aniversario() {
        idade++;
    }
}
