/// Caixa específica para guardar valores double.
///
/// Esta classe funciona, mas é limitada: ela só aceita double.
/// Depois, a classe Caixa<T> mostra uma solução mais reutilizável.
class CaixaDouble {
    double _coisa = 0;

    void adicionar(double item) {
        _coisa = item;
    }

    void imprimir() {
        print(_coisa);
    }
}
