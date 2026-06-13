// Arquivo: conta_corrente.dart
// Tema: Herança e sobrescrita de métodos.
//
// ContaCorrente herda de Conta usando "extends".
// Isso quer dizer que ContaCorrente já nasce com titular, saldo, depositar,
// sacar, aplicarRotinaMensal e exibirResumo.
//
// Além disso, ContaCorrente acrescenta uma característica própria:
// limite de cheque especial.

import 'conta.dart';

class ContaCorrente extends Conta {
  // O limite de cheque especial permite sacar um pouco além do saldo.
  // Exemplo: saldo 100 e limite 200 permitem sacar até 300.
  double limiteChequeEspecial;

  ContaCorrente({
    required super.titular,
    required super.saldo,
    required this.limiteChequeEspecial,
  });

  // Sobrescrita de getter.
  // A classe mãe dizia que o tipo era "Conta".
  // Esta classe filha informa um tipo mais específico: "Conta corrente".
  @override
  String get tipo => 'Conta corrente';

  // Sobrescrita de método.
  // A regra de saque da conta corrente é diferente da regra da conta comum.
  // Ela permite usar saldo + limite de cheque especial.
  @override
  bool sacar(double valor) {
    if (valor <= 0) {
      print('Saque não realizado: o valor precisa ser maior que zero.');
      return false;
    }

    final totalDisponivel = saldo + limiteChequeEspecial;

    if (valor > totalDisponivel) {
      print('Saque não realizado: saldo e limite insuficientes.');
      return false;
    }

    saldo = saldo - valor;
    print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado usando regra da conta corrente.');
    return true;
  }

  // Outra sobrescrita.
  // Conta corrente possui uma tarifa mensal fixa.
  @override
  double calcularTarifaMensal() {
    return 12.00;
  }

  // Sobrescrevemos o resumo para mostrar também o limite.
  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Limite de cheque especial: R\$ ${limiteChequeEspecial.toStringAsFixed(2)}');
  }
}
