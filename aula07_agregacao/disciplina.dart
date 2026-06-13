/// Classe que representa uma disciplina.
///
/// Ela é pequena porque o objetivo da aula não é modelar todos os detalhes de
/// uma disciplina, mas mostrar como uma classe pode se relacionar com outra.
class Disciplina {
    String _nome = '';

    /// Construtor com valor padrão.
    Disciplina([this._nome = '']);

    @override
    String toString() {
        return _nome;
    }
}
