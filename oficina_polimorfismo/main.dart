import 'funcionario.dart';
import 'gerente.dart';
import 'programador.dart';

/// Programa principal da oficina de polimorfismo.
///
/// Polimorfismo significa que objetos diferentes podem ser tratados por um
/// tipo mais geral e, mesmo assim, cada um executa seu próprio comportamento.
void main() {
  Programador programador1 = Programador('Carlos');
  Programador programador2 = Programador('Renato');
  Gerente gerente = Gerente('Claudia');

  Funcionario funcionario = Funcionario('Funcionário genérico');
  funcionario.imprimir();

  // A variável é do tipo Funcionario, mas recebe um objeto Gerente.
  // Ao chamar imprimir, o Dart executa o método sobrescrito em Gerente.
  funcionario = gerente;
  funcionario.imprimir();

  // Agora a mesma variável recebe um Programador.
  // O método chamado é o imprimir de Programador.
  funcionario = programador1;
  funcionario.imprimir();

  print('\nPercorrendo a lista:');

  // A lista aceita Programador e Gerente porque ambos herdam de Funcionario.
  List<Funcionario> funcionarios = [programador1, programador2, gerente];

  for (Funcionario item in funcionarios) {
    item.imprimir();
  }
}
