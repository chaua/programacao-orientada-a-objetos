import 'funcionario.dart';

/// Gerente é um tipo específico de Funcionario.
///
/// A palavra [extends] indica herança.
/// Isso significa que Gerente herda atributos e métodos de Funcionario.
class Gerente extends Funcionario {
    /// Chama o construtor da classe pai usando super(nome).
    Gerente(String nome) : super(nome);

    /// Método específico de gerente.
    void mandar() {
        print('Mandando nos outros...');
    }

    /// Sobrescrita de método.
    ///
    /// A classe Gerente altera o comportamento de imprimir herdado de Funcionario.
    @override
    void imprimir() {
        print('Gerente: $nome');
    }
}
