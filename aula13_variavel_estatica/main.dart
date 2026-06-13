import 'pessoa.dart';
import 'eleitor.dart';

/// Programa principal da aula de membros estáticos.
void main() {
    // Acessamos a variável estática usando o nome da classe.
    // Ainda não criamos nenhum eleitor, então o total começa em zero.
    print(Eleitor.numEleitores);

    // Cria o primeiro eleitor.
    Eleitor e1 = Eleitor('Zé');
    e1.imprimeEleitores();
    print(Eleitor.numEleitores);
    print('---');

    // Cria o segundo eleitor.
    // O contador aumenta para todos, pois ele é compartilhado pela classe.
    Eleitor e2 = Eleitor('Jão');
    e1.imprimeEleitores();
    e2.imprimeEleitores();
    print(Eleitor.numEleitores);
    print('---');

    // Cria o terceiro eleitor.
    Eleitor e3 = Eleitor('Zézinho');
    e1.imprimeEleitores();
    e2.imprimeEleitores();
    e3.imprimeEleitores();
    print(Eleitor.numEleitores);
    print('---');

    // Constantes estáticas também são acessadas pelo nome da classe.
    print('Limite de idade = ${Pessoa.DE_MAIOR}');
}
