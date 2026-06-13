import 'funcionario.dart';

/// Programador é um tipo específico de Funcionario.
class Programador extends Funcionario {
    /// Reaproveita o construtor da classe Funcionario.
    Programador(String nome) : super(nome);

    /// Método específico de programador.
    void programar() {
        print('Programando...');
    }

    /// Sobrescreve o método imprimir da classe Funcionario.
    @override
    void imprimir() {
        print('Olá, sou o programador $nome');
    }
}
