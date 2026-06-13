// Arquivo: poligono.dart
// Tema: Classe abstrata.
//
// Uma classe abstrata serve como modelo para outras classes.
// Ela pode ter métodos prontos e também pode ter métodos sem implementação.
//
// Métodos sem implementação obrigam as classes filhas a criar suas próprias versões.
// Neste exemplo, todo polígono precisa informar seu número de lados e saber se desenhar.

abstract class Poligono {
  // Nome do polígono.
  // Exemplo: "Triângulo", "Quadrado", "Pentágono".
  String nome;

  Poligono(this.nome);

  // Getter abstrato.
  // A classe Poligono não sabe quantos lados cada filho terá.
  // Por isso, cada classe filha precisa sobrescrever este getter.
  int get numeroDeLados;

  // Método abstrato.
  // A classe Poligono não sabe como desenhar cada figura.
  // Cada filho terá seu próprio desenho.
  void desenhar();

  // Método concreto.
  // Ele já está pronto na classe abstrata e será herdado por todos os filhos.
  void apresentar() {
    print('Polígono: $nome');
    print('Número de lados: $numeroDeLados');
    print('Desenho:');
    desenhar();
    print('');
  }
}
