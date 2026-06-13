/// Classe simples para demonstrar constante estática.
class Pessoa {
    // Constante estática.
    // Como é const, o valor não muda durante a execução do programa.
    // Como é static, o valor pertence à classe Pessoa, e não a cada objeto Pessoa.
    static const int DE_MAIOR = 18;

    // Estes atributos são de instância.
    // Cada objeto Pessoa terá seu próprio nome e sua própria idade.
    String nome = '';
    int idade = 0;

    Pessoa(this.nome, this.idade);
}
