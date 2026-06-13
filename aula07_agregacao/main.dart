import 'aluno.dart';
import 'disciplina.dart';

/// Programa principal do exemplo de agregação.
///
/// Agregação significa que um objeto usa outro, mas o objeto usado também pode
/// existir sozinho. Aqui, as disciplinas são criadas fora do aluno e depois
/// associadas ao aluno.
void main() {
  Disciplina poo = Disciplina('Programação Orientada a Objetos');
  Disciplina bd = Disciplina('Banco de Dados');

  Aluno aluno = Aluno('Ana', 12345);
  aluno.adicionaDisciplina(poo);
  aluno.adicionaDisciplina(bd);

  print(aluno);
  print('Primeira disciplina: ${aluno.getDisciplina(0)}');
}
