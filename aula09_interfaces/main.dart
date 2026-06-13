// Arquivo: main.dart
// Aula 09: Interfaces em Dart com classes de ordenação.
//
// Objetivo da aula:
// Entender que várias classes podem seguir a mesma interface.
// Assim, o programa principal trabalha com o tipo geral Ordenador,
// sem depender diretamente de um algoritmo específico.

import 'ordenador.dart';
import 'ordenador_bolha.dart';
import 'ordenador_nativo.dart';
import 'ordenador_selecao.dart';

void main() {
  final numeros = [8, 3, 5, 1, 9, 2];

  print('Lista original: $numeros');
  print('');

  // Aqui está a ideia principal da aula.
  // O main muda apenas os objetos.
  // Todos os objetos abaixo implementam a mesma interface: Ordenador.
  final ordenadores = <Ordenador>[
    OrdenadorBolha(),
    OrdenadorSelecao(),
    OrdenadorNativo(),
  ];

  // Como todos seguem a mesma interface, podemos chamar ordenar()
  // sem nos preocupar com o algoritmo usado internamente.
  for (final ordenador in ordenadores) {
    executarOrdenacao(ordenador, numeros);
  }

  print('\n=== Teste trocando apenas o objeto ===');

  // Para trocar o algoritmo, basta mudar o objeto criado nesta linha.
  // Experimente trocar OrdenadorBolha por OrdenadorSelecao ou OrdenadorNativo.
  Ordenador ordenadorEscolhido = OrdenadorBolha();
  executarOrdenacao(ordenadorEscolhido, numeros);
}

// Esta função depende apenas da interface Ordenador.
// Ela não sabe se está usando bolha, seleção ou sort() do Dart.
// Isso deixa o código mais flexível.
void executarOrdenacao(Ordenador ordenador, List<int> numeros) {
  final ordenados = ordenador.ordenar(numeros);

  print('Algoritmo: ${ordenador.nome}');
  print('Resultado: $ordenados');
  print('');
}
