import 'cliente.dart';

/// Programa principal do exemplo de composição.
///
/// Composição significa que um objeto contém outro de forma forte.
/// Neste exemplo, o Cliente possui internamente um Endereco.
void main() {
  Cliente cliente = Cliente('Maria', '123.456.789-00');

  // O código externo altera apenas a rua por meio do Cliente.
  // Ele não acessa diretamente o objeto Endereco interno.
  cliente.rua = 'Rua das Flores';

  print(cliente);
}
