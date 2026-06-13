/// Classe que representa um ponto no plano cartesiano.
///
/// Um ponto possui duas coordenadas: x e y.
/// Este exemplo mostra métodos comuns e operadores sobrecarregados.
class Ponto {
    int x = 0;
    int y = 0;

    /// Construtor com parâmetros posicionais opcionais.
    ///
    /// Se nenhum valor for informado, o ponto começa em (0, 0).
    Ponto([this.x = 0, this.y = 0]);

    /// Define como o objeto será transformado em texto.
    ///
    /// O print chama toString automaticamente quando precisa exibir um objeto.
    @override
    String toString() {
        return '($x, $y)';
    }

    /// Soma usando método comum.
    ///
    /// p1.soma(p2) cria um novo ponto somando x com x e y com y.
    Ponto soma(Ponto outro) {
        Ponto novo = Ponto();
        novo.x = x + outro.x;
        novo.y = y + outro.y;
        return novo;
    }

    /// Subtração usando método comum.
    Ponto subt(Ponto outro) {
        Ponto novo = Ponto();
        novo.x = x - outro.x;
        novo.y = y - outro.y;
        return novo;
    }

    /// Multiplicação por escalar usando método comum.
    ///
    /// Escalar é um número usado para multiplicar as duas coordenadas.
    Ponto mult(int escalar) {
        Ponto novo = Ponto();
        novo.x = x * escalar;
        novo.y = y * escalar;
        return novo;
    }

    /// Sobrecarga do operador +.
    ///
    /// Permite escrever p1 + p2 em vez de p1.soma(p2).
    Ponto operator +(Ponto outro) {
        return Ponto(x + outro.x, y + outro.y);
    }

    /// Sobrecarga do operador -.
    Ponto operator -(Ponto outro) {
        return Ponto(x - outro.x, y - outro.y);
    }

    /// Sobrecarga do operador *.
    ///
    /// Permite multiplicar um ponto por um número inteiro.
    Ponto operator *(int escalar) {
        return Ponto(x * escalar, y * escalar);
    }

    /// Sobrecarga do operador ==.
    ///
    /// Dois pontos são iguais quando possuem o mesmo x e o mesmo y.
    @override
    bool operator ==(Object outro) {
        if (outro is Ponto) {
            return x == outro.x && y == outro.y;
        }
        return false;
    }

    /// Sempre que sobrescrevemos ==, também devemos sobrescrever hashCode.
    @override
    int get hashCode {
        return Object.hash(x, y);
    }
}
