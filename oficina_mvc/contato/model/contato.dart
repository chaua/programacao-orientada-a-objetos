/// Model do exemplo MVC sem DAO.
///
/// O Model representa os dados principais da aplicação.
class Contato {
    String nome;
    String telefone;

    Contato(this.nome, this.telefone);

    @override
    String toString() {
        return '$nome - $telefone';
    }
}
