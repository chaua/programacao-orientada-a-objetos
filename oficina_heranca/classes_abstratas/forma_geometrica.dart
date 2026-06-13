import 'nomeavel.dart';
import 'colorivel.dart';

abstract class FormaGeometrica implements Nomeavel, Colorivel {
    int _numLados;
    
    FormaGeometrica(this._numLados, super.cor = 'branco');

    double calcularArea();
    double calcularPerimetro();
    void desenhar();

    @override
    void imprimeNome() {
        print('Forma Geométrica');
    }

    @override 
    void colorir() {
        print('Pintando a forma geometrica de $cor')
    }

}