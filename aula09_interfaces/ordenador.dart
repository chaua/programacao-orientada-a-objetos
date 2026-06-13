// Arquivo: ordenador.dart
// Tema: Interface em Dart.
//
// Em Dart, não existe uma palavra reservada chamada "interface" como em Java.
// Em Dart, qualquer classe pode ser usada como interface.
//
// Nesta aula, usamos uma classe abstrata para representar a interface Ordenador.
// Ela define o que qualquer classe de ordenação precisa ter:
// 1. um nome;
// 2. um método ordenar().
//
// A interface não se preocupa com COMO a ordenação será feita.
// Ela apenas define O QUE precisa existir.

abstract class Ordenador {
  // Nome do algoritmo.
  // Exemplo: "Bolha", "Seleção", "Ordenação nativa".
  String get nome;

  // Método que recebe uma lista de números e devolve uma nova lista ordenada.
  // Cada classe concreta vai implementar esse método do seu próprio jeito.
  List<int> ordenar(List<int> numeros);
}
