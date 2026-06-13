/// Classe base para demonstrar herança e polimorfismo.
///
/// Funcionario representa o tipo mais geral.
/// Programador e Gerente serão tipos mais específicos de funcionário.
class Funcionario {
    String nome;

    Funcionario(this.nome);

    /// Método que poderá ser sobrescrito nas classes filhas.
    void imprimir() {
        print('Nome do funcionario: $nome');
    }
}
