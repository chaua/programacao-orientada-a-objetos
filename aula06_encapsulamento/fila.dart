/// Classe que representa uma fila de textos.
///
/// Uma fila funciona como uma fila de pessoas: quem entra primeiro, sai primeiro.
/// Esse comportamento é chamado de FIFO, do inglês "First In, First Out".
///
/// Esta classe também demonstra encapsulamento: os dados internos ficam privados
/// e só podem ser manipulados pelos métodos públicos da classe.
class Fila {
    // Lista privada que guarda os itens da fila.
    // Como começa com underline, outros arquivos não devem acessá-la diretamente.
    List<String> _dados = [];

    // Guarda a quantidade de itens válidos na fila.
    // Neste exemplo, ele também indica a posição final da fila.
    int _final = 0;

    /// Adiciona um item no final da fila.
    ///
    /// Exemplo: enfileirar('bola') coloca a palavra 'bola' no fim da fila.
    void enfileirar(String item) {
        _dados.add(item);
        _final++;
    }

    /// Remove e retorna o primeiro item da fila.
    ///
    /// Se a fila estiver vazia, retorna uma string vazia.
    String desenfileirar() {
        // Antes de remover, conferimos se existe algo na fila.
        if (_estaVazia()) {
            print('Fila vazia!!');
            return '';
        }

        // O primeiro item está na posição zero da lista.
        String item = _dados[0];

        // Move todos os itens uma posição para a esquerda.
        // Assim, o segundo item passa a ser o primeiro.
        for (int i = 0; i < _final - 1; i++) {
            _dados[i] = _dados[i + 1];
        }

        // Remove a última posição duplicada que sobrou após o deslocamento.
        _dados.removeLast();
        _final--;

        return item;
    }

    /// Método privado que verifica se a fila está vazia.
    ///
    /// Como é privado, ele é usado apenas pela própria classe Fila.
    bool _estaVazia() {
        return _final == 0;
    }

    /// Imprime todos os itens da fila na ordem atual.
    void imprimir() {
        for (int i = 0; i < _final; i++) {
            print(_dados[i]);
        }
    }

    /// Getter escrito como método comum.
    ///
    /// Ele permite consultar o tamanho da fila sem acessar [_final] diretamente.
    int getTamanho() {
        return _final;
    }

    /// Getter escrito como property.
    ///
    /// Quem usa a classe pode escrever fila.tamanho, como se fosse um atributo.
    /// Internamente, continua sendo um método controlado pela classe.
    int get tamanho {
        return _final;
    }
}
