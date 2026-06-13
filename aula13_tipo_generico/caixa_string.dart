/// Caixa específica para guardar textos.
///
/// Esta classe repete a mesma lógica de CaixaInt e CaixaDouble, mudando apenas o tipo.
/// Esse tipo de repetição é justamente o problema que generics resolvem.
class CaixaString {
    String _coisa = '';

    void adicionar(String item) {
        _coisa = item;
    }

    void imprimir() {
        print(_coisa);
    }
}
