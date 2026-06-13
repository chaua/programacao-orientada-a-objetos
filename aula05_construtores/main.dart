// Cada import traz uma classe de outro arquivo.
// A aula usa várias versões da classe Pessoa para comparar formas de construtor.
import 'pessoa1.dart';
import 'pessoa2.dart';
import 'pessoa3.dart';
import 'pessoa4.dart';
import 'pessoa5.dart';
import 'pessoa6.dart';
import 'produto.dart';

/// Função principal da aula de construtores.
///
/// O objetivo deste arquivo é criar objetos usando diferentes tipos de construtor.
void main() {
    // Construtor default: não recebe nenhum parâmetro.
    // O objeto nasce com os valores definidos dentro da classe.
    var p1 = Pessoa1();

    // Construtor com parâmetros posicionais.
    // A ordem dos valores importa: primeiro nome, depois idade.
    var p2 = Pessoa2('Batman', 40);

    // Construtor com inicialização curta usando this.
    var p3 = Pessoa3('Robin', 30);

    // Construtor que valida dados antes de guardar no objeto.
    var p4 = Pessoa4('Alfred', 80);

    // Construtor com parâmetros nomeados.
    // A ordem não importa, pois cada valor vem com seu nome.
    var p5 = Pessoa5(nome: 'Cebolinha', idade: 7);

    // Como os parâmetros de Pessoa5 têm valores padrão,
    // é possível informar apenas o nome.
    var p6 = Pessoa5(nome: 'Cascão');

    // Também é possível trocar a ordem dos parâmetros nomeados.
    var p7 = Pessoa5(idade: 7, nome: 'Magali');

    // Pessoa6 exige que o nome seja informado.
    var p8 = Pessoa6(nome: 'Monica', idade: 7);

    // Exemplos de construtores nomeados na classe Produto.
    var produto1 = Produto('Caderno', 3, 0.0);
    var produto2 = Produto.comDesconto(10);
    var produto3 = Produto.criarBola();

    // As variáveis abaixo são impressas apenas para deixar claro que os objetos existem.
    print([p1, p2, p3, p4, p5, p6, p7, p8]);
    print([produto1, produto2, produto3]);
}
