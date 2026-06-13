import 'conta.dart';

/// Programa principal do exemplo de classe e objeto.
///
/// Este arquivo cria um objeto da classe Conta e chama um método desse objeto.
/// Assim, o exemplo pode ser executado isoladamente com: dart run main.dart
void main() {
  // Cria uma conta bancária com valores iniciais.
  Conta conta = Conta(saldo: 100, numero: 1234, agencia: 55);

  // Chama o método imprime, que pertence ao objeto conta.
  conta.imprime();
}
