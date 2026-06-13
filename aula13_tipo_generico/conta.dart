/// Este arquivo apresenta uma classe simples chamada [Conta].
///
/// A ideia principal é mostrar que uma classe pode representar uma coisa do
/// mundo real. Neste exemplo, a classe representa uma conta bancária.
///
/// Em programação orientada a objetos, uma classe funciona como um "molde":
/// ela define quais informações o objeto terá e quais ações ele poderá executar.
class Conta {
    // Atributo que guarda o saldo da conta.
    // Atributo é uma variável que pertence ao objeto.
    int saldo = 0;

    // Atributo que guarda o número da conta.
    int numero = 0;

    // Atributo que guarda o número da agência.
    int agencia = 0;

    /// Construtor da classe.
    ///
    /// O construtor é chamado no momento em que criamos um objeto.
    ///
    /// Exemplo de uso:
    /// Conta(saldo: 100, numero: 1234, agencia: 55)
    ///
    /// A palavra [required] indica que o valor é obrigatório.
    Conta({required this.saldo, required this.numero, required this.agencia});

    /// Método que imprime os dados da conta na tela.
    ///
    /// Método é uma função que pertence a uma classe.
    /// Aqui, o método não devolve nenhum valor, por isso o tipo de retorno é [void].
    void imprime() {
        print('Conta....: $numero/$agencia');
        print('Saldo....: $saldo');
    }
}
