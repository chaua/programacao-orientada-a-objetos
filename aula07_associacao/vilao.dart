/// Classe que representa um vilão.
///
/// O vilão possui nome, vida e sabe como receber dano.
class Vilao {
    String _nome;
    int _vida = 500;

    /// Construtor que recebe o nome do vilão.
    Vilao(this._nome);

    /// Reduz a vida do vilão.
    ///
    /// Este método protege a regra de negócio: a vida nunca deve ficar negativa.
    void sofrerDano(int dano) {
        _vida -= dano;

        if (_vida <= 0) {
            _vida = 0;
        }

        print('$_nome sofreu $dano de dano. Vida atual: $_vida');
    }

    /// Getter que indica se o vilão ainda está vivo.
    bool get estaVivo {
        return _vida > 0;
    }
}
