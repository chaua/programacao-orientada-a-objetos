import 'caixa_int.dart';
import 'caixa_double.dart';
import 'caixa_string.dart';
import 'caixa.dart';
import 'conta.dart';

/// Programa principal do exemplo de tipos genéricos.
///
/// Generics permitem criar uma classe reutilizável que trabalha com diferentes
/// tipos de dados sem perder segurança de tipo.
void main() {
  // Primeiro, usamos caixas específicas para cada tipo.
  // Isso mostra o problema: sem generics, repetimos a mesma classe várias vezes.
  CaixaInt caixaInt = CaixaInt();
  caixaInt.adicionar(10);
  caixaInt.imprimir();

  CaixaDouble caixaDouble = CaixaDouble();
  caixaDouble.adicionar(3.14);
  caixaDouble.imprimir();

  CaixaString caixaString = CaixaString();
  caixaString.adicionar('banana');
  caixaString.imprimir();

  // Agora usamos uma única classe genérica.
  // O tipo entre < > define o tipo aceito pela caixa.
  Caixa<int> caixaGenericaInt = Caixa<int>(0);
  caixaGenericaInt.adicionar(1);
  caixaGenericaInt.imprimir();

  Caixa<double> caixaGenericaDouble = Caixa<double>(0.0);
  caixaGenericaDouble.adicionar(1.5);
  caixaGenericaDouble.imprimir();

  Caixa<String> caixaGenericaString = Caixa<String>('');
  caixaGenericaString.adicionar('melancia');
  caixaGenericaString.imprimir();

  // A mesma classe também pode guardar objetos criados pelo programador.
  Caixa<Conta> caixaDeConta = Caixa<Conta>(Conta(saldo: 1000, numero: 1234, agencia: 2222));
  caixaDeConta.imprimir();
}
