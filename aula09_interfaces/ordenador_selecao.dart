// Arquivo: ordenador_selecao.dart
// Tema: Outra implementação da mesma interface.
//
// Esta classe também implementa Ordenador.
// O main poderá trocar OrdenadorBolha por OrdenadorSelecao sem mudar a lógica
// principal do programa.

import 'ordenador.dart';

class OrdenadorSelecao implements Ordenador {
  @override
  String get nome => 'Ordenação por seleção';

  @override
  List<int> ordenar(List<int> numeros) {
    final resultado = List<int>.from(numeros);

    // O algoritmo de seleção procura o menor elemento e coloca esse elemento
    // na posição correta.
    for (var i = 0; i < resultado.length; i++) {
      var indiceMenor = i;

      for (var j = i + 1; j < resultado.length; j++) {
        if (resultado[j] < resultado[indiceMenor]) {
          indiceMenor = j;
        }
      }

      final temporario = resultado[i];
      resultado[i] = resultado[indiceMenor];
      resultado[indiceMenor] = temporario;
    }

    return resultado;
  }
}
