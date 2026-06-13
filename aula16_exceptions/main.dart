// Aula 16 — Tratamento de Exceções em Dart
// Tema: exemplo simples usando try, catch, on, finally e throw.
//
// Uma exceção é um problema que acontece durante a execução do programa.
// Exemplo: tentar converter o texto "abc" para número.
//
// O tratamento de exceções permite que o programa lide com o erro
// de forma controlada, sem simplesmente parar de maneira inesperada.

void main() {
  print('Exemplo 1: erro ao converter texto para número.');

  // Esta variável tem letras, não um número.
  // Por isso, int.parse(texto) vai gerar uma exceção.
  final textoDigitado = 'abc';

  try {
    // O bloco try contém o código que pode dar erro.
    final numero = int.parse(textoDigitado);
    print('Número convertido: $numero');
  } on FormatException catch (erro) {
    // O bloco on FormatException trata especificamente erro de formato.
    // Esse erro ocorre quando o texto não pode ser convertido para número.
    print('Não foi possível converter "$textoDigitado" para número.');
    print('Mensagem técnica do erro: ${erro.message}');
  } catch (erro) {
    // O catch genérico trata outros erros que não foram previstos acima.
    // Ele é útil como uma última proteção.
    print('Aconteceu um erro inesperado: $erro');
  } finally {
    // O bloco finally sempre executa.
    // Ele executa tanto quando ocorre erro quanto quando não ocorre erro.
    print('Fim do primeiro exemplo.\n');
  }

  print('Exemplo 2: lançando nossa própria exceção.');

  try {
    // Aqui chamamos uma função que pode lançar uma exceção.
    sacar(valor: 150.0, saldoAtual: 100.0);
  } catch (erro) {
    // Como o saque é maior que o saldo, a função vai lançar uma exceção.
    // O catch captura essa exceção e permite mostrar uma mensagem amigável.
    print('Operação não realizada: $erro');
  } finally {
    print('Fim do segundo exemplo.');
  }
}

// Esta função simula um saque bancário bem simples.
// Ela não usa classe para manter o exemplo focado apenas em exceções.
void sacar({required double valor, required double saldoAtual}) {
  print('Saldo atual: R\$ $saldoAtual');
  print('Valor solicitado para saque: R\$ $valor');

  // Se o valor do saque for maior que o saldo, a operação não pode continuar.
  // throw lança uma exceção manualmente.
  if (valor > saldoAtual) {
    throw Exception('saldo insuficiente para realizar o saque.');
  }

  // Esta linha só executa se não houver exceção.
  final novoSaldo = saldoAtual - valor;
  print('Saque realizado. Novo saldo: R\$ $novoSaldo');
}
