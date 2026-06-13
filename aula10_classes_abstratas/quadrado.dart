// Arquivo: quadrado.dart
// Tema: Sobrescrita em classe concreta.
//
// Quadrado também é um Poligono.
// Ele define seu número de lados e seu próprio desenho.

import 'poligono.dart';

class Quadrado extends Poligono {
  Quadrado() : super('Quadrado');

  @override
  int get numeroDeLados => 4;

  @override
  void desenhar() {
    print('*****');
    print('*   *');
    print('*   *');
    print('*****');
  }
}
