// Importa o arquivo pessoa.dart.
// Sem esse import, este arquivo não conheceria a classe Pessoa.
import 'pessoa.dart';

/// Função principal do programa.
///
/// Todo programa Dart executável começa pela função [main].
void main() {
    // Cria um objeto da classe Pessoa.
    // O objeto recebe nome "Batman" e idade 40.
    Pessoa pessoa1 = Pessoa('Batman', 40);

    // Chama o método imprime para mostrar os dados atuais da pessoa.
    pessoa1.imprime();

    // Chama o método aniversario.
    // Esse método aumenta a idade da pessoa em 1.
    pessoa1.aniversario();

    // Tenta alterar a idade para um valor inválido.
    // A classe Pessoa possui um setter que impede idade negativa.
    // Portanto, esta linha não deve alterar a idade real do objeto.
    pessoa1.idade = -88000;

    // Imprime novamente para verificar se a idade inválida foi recusada.
    pessoa1.imprime();
}
