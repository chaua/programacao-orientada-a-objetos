// Arquivo: conta_salario.dart
// Tema: Herança com controle interno.
//
// ContaSalario representa uma conta usada para receber salário.
// Neste exemplo, ela possui uma quantidade de saques gratuitos por mês.

import 'conta.dart';

class ContaSalario extends Conta {
  // Quantidade de saques gratuitos permitidos no mês.
  int saquesGratuitos;

  // Atributo privado.
  // O underline no início (_saquesRealizados) indica que ele só deve ser usado
  // dentro deste arquivo/biblioteca.
  int _saquesRealizados = 0;

  ContaSalario({
    required super.titular,
    required super.saldo,
    required this.saquesGratuitos,
  });

  @override
  String get tipo => 'Conta salário';

  // Sobrescrita do método sacar.
  // Aqui usamos a regra básica da classe mãe com super.sacar(valor).
  // Se o saque der certo, contamos mais um saque realizado.
  @override
  bool sacar(double valor) {
    final saqueRealizado = super.sacar(valor);

    if (saqueRealizado) {
      _saquesRealizados++;
    }

    return saqueRealizado;
  }

  // A tarifa da conta salário depende da quantidade de saques extras.
  // Cada saque além dos gratuitos custa R$ 2,00.
  @override
  double calcularTarifaMensal() {
    final saquesExtras = _saquesRealizados - saquesGratuitos;

    if (saquesExtras <= 0) {
      return 0.0;
    }

    return saquesExtras * 2.00;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Saques gratuitos no mês: $saquesGratuitos');
    print('Saques realizados: $_saquesRealizados');
  }
}
