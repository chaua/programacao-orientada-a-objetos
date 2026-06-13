// Arquivo: conta_poupanca.dart
// Tema: Herança com comportamento especializado.
//
// ContaPoupanca também herda de Conta.
// Ela reaproveita o que toda conta tem e acrescenta rendimento.

import 'conta.dart';

class ContaPoupanca extends Conta {
  // Taxa de rendimento mensal.
  // O valor 0.01 representa 1%.
  double taxaRendimento;

  ContaPoupanca({
    required super.titular,
    required super.saldo,
    required this.taxaRendimento,
  });

  @override
  String get tipo => 'Conta poupança';

  // A poupança tem um comportamento próprio: render juros.
  // O rendimento aumenta o saldo de acordo com a taxa.
  void renderJuros() {
    final rendimento = saldo * taxaRendimento;
    saldo = saldo + rendimento;

    print('Rendimento de R\$ ${rendimento.toStringAsFixed(2)} aplicado na poupança.');
  }

  // A poupança não cobra tarifa mensal neste exemplo.
  @override
  double calcularTarifaMensal() {
    return 0.0;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Taxa de rendimento: ${(taxaRendimento * 100).toStringAsFixed(2)}%');
  }
}
