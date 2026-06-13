/// Caixa específica para guardar valores inteiros.
///
/// Ela ajuda a entender por que generics são úteis: sem generics, precisaríamos
/// criar uma classe diferente para cada tipo de dado.
class CaixaInt {
    int _coisa = 0;

    void adicionar(int item) {
        _coisa = item;
    }

    void imprimir() {
        print(_coisa);
    }
}
