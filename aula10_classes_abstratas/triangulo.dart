// Arquivo: triangulo.dart
// Tema: Classe filha de uma classe abstrata.
//
// Triangulo herda de Poligono.
// Por isso, ele precisa implementar tudo que Poligono deixou como abstrato.

import 'poligono.dart';

class Triangulo extends Poligono {
  Triangulo() : super('Triângulo');

  @override
  int get numeroDeLados => 3;

  @override
  void desenhar() {
    print('  *  ');
    print(' *** ');
    print('*****');
  }
}
