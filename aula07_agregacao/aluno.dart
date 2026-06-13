import 'disciplina.dart';

/// Classe que representa um aluno.
///
/// Este exemplo demonstra agregação.
/// Agregação ocorre quando um objeto usa outro objeto, mas esse outro objeto
/// pode existir independentemente.
///
/// Exemplo: uma disciplina pode existir mesmo que nenhum aluno esteja ligado a ela.
class Aluno {
    String _nome = '';
    int _matricula = 0;

    // O aluno possui uma lista de disciplinas.
    // A lista é privada para impedir alterações diretas fora da classe.
    List<Disciplina> _disciplinas = [];

    /// Construtor com parâmetros posicionais opcionais.
    ///
    /// Se nenhum valor for informado, nome começa vazio e matrícula começa com zero.
    Aluno([this._nome = '', this._matricula = 0]);

    /// Modo 1 de agregação: recebe uma lista pronta criada fora da classe.
    ///
    /// Isso mostra que as disciplinas não são criadas pelo aluno.
    /// Elas chegam de fora e são apenas associadas ao aluno.
    set disciplinas(List<Disciplina> disciplinas) {
        _disciplinas = disciplinas;
    }

    /// Modo 2 de agregação: adiciona uma disciplina por vez.
    void adicionaDisciplina(Disciplina disciplina) {
        _disciplinas.add(disciplina);
    }

    /// Remove uma disciplina da lista do aluno.
    void removeDisciplina(Disciplina disciplina) {
        _disciplinas.remove(disciplina);
    }

    /// Retorna uma disciplina pela posição na lista.
    ///
    /// A primeira posição de uma lista em Dart é sempre 0.
    Disciplina getDisciplina(int i) {
        return _disciplinas[i];
    }

    @override
    String toString() {
        return 'Aluno(nome: $_nome, matricula: $_matricula, disciplinas: ${_disciplinas.length})';
    }
}
