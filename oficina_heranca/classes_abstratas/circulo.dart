import 'forma_geometrica.dart';

class Circulo extends FormaGeometrica {
    double raio;

    double get diametro => 2 * raio;

    Circulo() : FormaGeometrica(0);

    @override
    double calcularArea() => 3.14 * raio * raio;

    @override
    double calcularPerimetro() => 2 * 3.14 * raio;

    @override
    void desenhar() {
        print('Desenhando um circulo asciii')
    };


}
