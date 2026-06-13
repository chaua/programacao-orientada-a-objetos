// Arquivo: pentagono.dart
// Tema: Mais uma classe concreta herdando de Poligono.
//
// Pentagono mostra que podemos criar vários filhos a partir do mesmo modelo.

import 'poligono.dart';

class Pentagono extends Poligono {
  Pentagono() : super('Pentágono');

  @override
  int get numeroDeLados => 5;

  @override
  void desenhar() {
    print('  *  ');
    print(' * * ');
    print('*   *');
    print('*****');
  }
}
