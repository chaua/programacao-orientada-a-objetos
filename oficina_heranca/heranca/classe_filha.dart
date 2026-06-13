import 'classe_pai.dart';

class ClasseFilha extends ClassePai {
    String atributo4;

    // A classe filha sempre precisa inicializar
    // os atributos da classe pai primeiro
    // - se a classe pai tiver o construtor default (sem parametros ou parametros com valor default)
    // --- a chamada não precisa ser explícita
    ClasseFilha(String atributo1, 
                String atributo2, 
                this.atributo4) : super(atributo1,
                                        atributo2,
                                        "não precisa");



    @override
    imprime() {
        super.imprime();
        print('classe filha');
    }

}