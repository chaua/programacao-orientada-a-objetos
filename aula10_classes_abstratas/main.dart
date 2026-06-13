// Arquivo: main.dart
// Aula 10: Classes abstratas com polígonos.
//
// Objetivo da aula:
// Entender que uma classe abstrata pode definir um modelo comum,
// mas deixar partes específicas para as classes filhas.
//
// Neste exemplo, Poligono define que todo polígono precisa ter:
// 1. nome;
// 2. número de lados;
// 3. capacidade de se desenhar.

import 'pentagono.dart';
import 'poligono.dart';
import 'quadrado.dart';
import 'triangulo.dart';

void main() {
  // Não podemos fazer isto:
  // final p = Poligono('Figura');
  //
  // Isso dá erro porque Poligono é uma classe abstrata.
  // Ela existe para servir de modelo, não para gerar objetos diretamente.

  final poligonos = <Poligono>[
    Triangulo(),
    Quadrado(),
    Pentagono(),
  ];

  // Todos os objetos da lista são polígonos.
  // Porém, cada um define seu próprio número de lados e seu próprio desenho.
  for (final poligono in poligonos) {
    poligono.apresentar();
  }
}
