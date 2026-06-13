// Arquivo: ordenador_bolha.dart
// Tema: Implementação de interface com implements.
//
// Esta classe implementa a interface Ordenador.
// Por isso, ela é obrigada a ter tudo que Ordenador exige:
// o getter nome e o método ordenar().

import 'ordenador.dart';

class OrdenadorBolha implements Ordenador {
  @override
  String get nome => 'Ordenação bolha';

  @override
  List<int> ordenar(List<int> numeros) {
    // Criamos uma cópia da lista original.
    // Assim, a lista recebida por parâmetro não é modificada diretamente.
    final resultado = List<int>.from(numeros);

    // O algoritmo bolha compara elementos vizinhos.
    // Se estiverem fora de ordem, ele troca os elementos de posição.
    for (var i = 0; i < resultado.length; i++) {
      for (var j = 0; j < resultado.length - 1; j++) {
        if (resultado[j] > resultado[j + 1]) {
          final temporario = resultado[j];
          resultado[j] = resultado[j + 1];
          resultado[j + 1] = temporario;
        }
      }
    }

    return resultado;
  }
}
