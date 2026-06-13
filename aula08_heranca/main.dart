// Arquivo: main.dart
// Aula 08: Herança simples com contas bancárias.
//
// Objetivo da aula:
// Entender que uma classe filha pode reaproveitar código de uma classe mãe.
// Também veremos sobrescrita, que acontece quando a classe filha redefine
// um método herdado para usar uma regra própria.

import 'conta_corrente.dart';
import 'conta_poupanca.dart';
import 'conta_salario.dart';

void main() {
  // Criamos três objetos diferentes.
  // Todos são contas, mas cada um possui regras próprias.
  final corrente = ContaCorrente(
    titular: 'Ana',
    saldo: 500.00,
    limiteChequeEspecial: 300.00,
  );

  final poupanca = ContaPoupanca(
    titular: 'Bruno',
    saldo: 1000.00,
    taxaRendimento: 0.01,
  );

  final salario = ContaSalario(
    titular: 'Carla',
    saldo: 1500.00,
    saquesGratuitos: 2,
  );

  print('=== Estado inicial das contas ===');
  corrente.exibirResumo();
  print('');
  poupanca.exibirResumo();
  print('');
  salario.exibirResumo();

  print('\n=== Operações ===');

  // A conta corrente permite usar limite.
  // O saldo é 500, mas o saque de 650 funciona porque existe limite de 300.
  corrente.sacar(650.00);

  // A poupança possui um comportamento específico: render juros.
  poupanca.renderJuros();

  // A conta salário controla quantos saques foram realizados.
  salario.sacar(100.00);
  salario.sacar(200.00);
  salario.sacar(300.00);

  print('\n=== Rotina mensal ===');

  // Este método existe na classe Conta.
  // Porém, ele chama calcularTarifaMensal(), que foi sobrescrito nas filhas.
  corrente.aplicarRotinaMensal();
  poupanca.aplicarRotinaMensal();
  salario.aplicarRotinaMensal();

  print('\n=== Estado final das contas ===');
  corrente.exibirResumo();
  print('');
  poupanca.exibirResumo();
  print('');
  salario.exibirResumo();
}
