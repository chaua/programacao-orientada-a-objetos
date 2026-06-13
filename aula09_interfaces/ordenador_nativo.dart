// Arquivo: ordenador_nativo.dart
// Tema: Implementação usando recurso pronto da linguagem.
//
// Esta classe também segue a interface Ordenador.
// A diferença é que ela usa o método sort(), que já existe nas listas do Dart.

import 'ordenador.dart';

class OrdenadorNativo implements Ordenador {
  @override
  String get nome => 'Ordenação nativa do Dart';

  @override
  List<int> ordenar(List<int> numeros) {
    final resultado = List<int>.from(numeros);

    // sort() altera a lista colocando os números em ordem crescente.
    resultado.sort();

    return resultado;
  }
}
