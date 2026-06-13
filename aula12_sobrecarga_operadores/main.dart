import 'ponto.dart';

/// Programa principal da aula de sobrecarga de operadores.
///
/// Sobrecarga de operador permite usar símbolos como +, - e * com objetos.
/// Neste exemplo, usamos esses operadores com pontos cartesianos.
void main() {
    // Cria três pontos.
    // Cada ponto possui uma coordenada x e uma coordenada y.
    Ponto p1 = Ponto(0, 0);
    Ponto p2 = Ponto(3, 4);
    Ponto p3 = Ponto(2, 2);

    // O método toString da classe Ponto define como o ponto aparece no print.
    print('p1 = $p1');
    print('p2 = $p2');
    print('p3 = $p3');

    // Primeiro usamos métodos comuns para somar e subtrair pontos.
    Ponto r1 = p2.soma(p3);
    print('$p2 + $p3 = $r1');

    Ponto r2 = p2.subt(p3);
    print('$p2 - $p3 = $r2');

    // Também é possível combinar chamadas de métodos.
    Ponto r3 = p1.soma(p2.soma(p3));
    print('$p1 + $p2 + $p3 = $r3');

    // Esta expressão usa apenas métodos.
    // Ela funciona, mas fica mais difícil de ler.
    Ponto p4 = p1.soma(p2.mult(2).subt(p3.mult(3)));
    print('$p1 + 2 * $p2 - 3 * $p3 = $p4');

    // Esta expressão usa operadores sobrecarregados.
    // O resultado é equivalente ao anterior, mas a leitura fica mais natural.
    Ponto p5 = p1 + p2 * 2 - p3 * 3;
    print('$p1 + 2 * $p2 - 3 * $p3 = $p5');

    // O operador == também foi sobrescrito na classe Ponto.
    print('$p4 == $p5 -> ${p4 == p5}');
}
