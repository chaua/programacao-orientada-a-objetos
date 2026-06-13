class Aluno {
    String nome;
    int matricula;
    Disciplina _disciplina;

    Aluno(this._disciplina);

    set disciplina(Disciplina disciplina) {
        _disciplina = disciplina
    }

}

class Disciplina {

}