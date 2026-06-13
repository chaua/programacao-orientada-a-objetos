import 'fila.dart';

/// Programa de teste da classe Fila.
///
/// Este arquivo mostra como usar os métodos públicos de uma classe encapsulada.
void main() {
    // Cria uma fila vazia.
    Fila fila = Fila();

    // Mostra o tamanho inicial da fila.
    print(fila.getTamanho());

    // Tenta remover um item de uma fila vazia.
    // A própria classe trata esse caso e mostra uma mensagem.
    fila.desenfileirar();

    // Adiciona três itens na fila.
    fila.enfileirar('bola');
    fila.enfileirar('camisa');
    fila.enfileirar('chuteira');

    // Mostra todos os itens que estão na fila.
    fila.imprimir();

    // Remove os itens um por um.
    // Como é uma fila, a ordem de saída será a mesma ordem de entrada.
    print(fila.desenfileirar());
    print(fila.desenfileirar());
    print(fila.desenfileirar());

    // Esta última chamada tenta remover de uma fila já vazia.
    print(fila.desenfileirar());
}
