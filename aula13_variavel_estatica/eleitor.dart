/// Classe que representa um eleitor.
///
/// Este arquivo demonstra o uso de variável estática.
/// Variável estática pertence à classe, não a um objeto específico.
class Eleitor {
    // Este atributo pertence a cada objeto Eleitor.
    // Cada eleitor terá seu próprio nome.
    String nome = '';

    // Esta variável pertence à classe Eleitor.
    // Todos os objetos compartilham o mesmo contador.
    static int numEleitores = 0;

    /// Construtor que recebe o nome do eleitor.
    ///
    /// Toda vez que um novo eleitor é criado, incrementamos o contador estático.
    Eleitor(this.nome) {
        numEleitores++;
    }

    /// Imprime o nome do eleitor junto com a quantidade total criada.
    void imprimeEleitores() {
        print('[$numEleitores] $nome');
    }
}
