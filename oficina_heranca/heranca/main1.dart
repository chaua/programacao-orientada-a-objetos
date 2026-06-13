import 'classe_pai.dart';
import 'classe_filha.dart';

main() {
    ClassePai p = ClassePai("A", "B", "C");
    p.imprime();

    print('---');

    ClasseFilha f = ClasseFilha("azul", "verde", "vermelho");
    f.imprime();
    f.oi();

}