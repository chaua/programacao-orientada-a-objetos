class ClassePai {
    String atributo1;
    String atributo2;
    String _atributo3;

    ClassePai(this.atributo1, this.atributo2, this._atributo3);

    String get atributo3 => _atributo3;
    set atributo3(String atributo3) {
        _atributo3 = atributo3;
    }

    imprime() {
        print("classe pai:");
        print(atributo1);
        print(atributo2);
        print(atributo3);
    }

    oi() {
        print('oi');
    }



}