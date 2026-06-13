import 'forma_geometrica.dart';

class TrianguloEquilatero extends FormaGeometrica {
    double base_;
    double altura;

    TrianguloEquilatero(this.base_, this.altura) : FormaGeometrica(3);

    @override
    double calcularArea() => (base_ * altura) / 2

    @override
    double calcularPerimetro() => 3 * base_;

    @override
    void desenhar() {
        print('Desenhando Triangulo');
    }

}