import 'vilao.dart';

/// Classe que representa um herói.
///
/// O herói possui nome, vida e a capacidade de atacar um vilão.
class Heroi {
    String _nome;
    int _vida = 100;

    /// Construtor que obriga a informar o nome do herói.
    Heroi(this._nome);

    /// Ataca um vilão.
    ///
    /// Observe que o herói não mexe diretamente no atributo _vida do vilão.
    /// Em vez disso, ele chama o método sofrerDano, que pertence ao vilão.
    void atacar(Vilao vilao) {
        print('$_nome atacou o vilão.');
        vilao.sofrerDano(50);
    }

    /// Getter que informa se o herói ainda tem vida.
    bool get estaVivo {
        return _vida > 0;
    }
}
