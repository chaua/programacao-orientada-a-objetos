// Arquivo: conta.dart
// Tema: Herança simples em Dart.
//
// Esta classe representa a ideia mais geral de uma conta bancária.
// Ela será a classe "mãe", também chamada de superclasse ou classe base.
//
// As classes ContaCorrente, ContaPoupanca e ContaSalario vão herdar de Conta.
// Isso significa que elas vão reaproveitar atributos e métodos comuns,
// como titular, saldo, depositar e sacar.

class Conta {
  // Nome da pessoa dona da conta.
  // Exemplo: "Ana", "Carlos", "Maria".
  String titular;

  // Valor disponível na conta.
  // O tipo double é usado porque dinheiro pode ter casas decimais.
  double saldo;

  // Construtor da classe Conta.
  // O construtor é executado quando criamos um objeto com "Conta(...)".
  Conta({required this.titular, required this.saldo});

  // Getter que devolve o tipo da conta.
  // Aqui a classe genérica responde apenas "Conta".
  // As classes filhas vão sobrescrever esse getter usando @override.
  String get tipo => 'Conta';

  // Método para depositar dinheiro.
  // Depositar significa somar um valor ao saldo atual.
  void depositar(double valor) {
    if (valor <= 0) {
      print('Depósito não realizado: o valor precisa ser maior que zero.');
      return;
    }

    saldo = saldo + valor;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado em $tipo.');
  }

  // Método para sacar dinheiro.
  // Sacar significa retirar um valor do saldo.
  // Este método retorna true quando o saque dá certo e false quando falha.
  bool sacar(double valor) {
    if (valor <= 0) {
      print('Saque não realizado: o valor precisa ser maior que zero.');
      return false;
    }

    if (valor > saldo) {
      print('Saque não realizado: saldo insuficiente.');
      return false;
    }

    saldo = saldo - valor;
    print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado em $tipo.');
    return true;
  }

  // Método que calcula a tarifa mensal da conta.
  // Na conta genérica, a tarifa é zero.
  // Cada tipo específico de conta pode sobrescrever esse método.
  double calcularTarifaMensal() {
    return 0.0;
  }

  // Método que aplica a rotina mensal da conta.
  // Ele usa o método calcularTarifaMensal().
  // Se uma classe filha sobrescrever calcularTarifaMensal(), este método já usará
  // automaticamente a versão da classe filha.
  void aplicarRotinaMensal() {
    final tarifa = calcularTarifaMensal();

    if (tarifa > 0) {
      saldo = saldo - tarifa;
      print('Tarifa mensal de R\$ ${tarifa.toStringAsFixed(2)} aplicada em $tipo.');
    } else {
      print('$tipo não possui tarifa mensal.');
    }
  }

  // Método para mostrar os dados da conta na tela.
  // Ele ajuda a visualizar o estado atual do objeto.
  void exibirResumo() {
    print('--- $tipo ---');
    print('Titular: $titular');
    print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}
