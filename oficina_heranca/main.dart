
import 'exemplo2/cachorro.dart';

void main() {
    Cachorro bidu = Cachorro('Bidu', 7);
    Cachorro coragem = Cachorro('Coragem', 5); 
    //bidu._nome = 'Banana'; // ERROR!

    // Estou mandando uma mensagem para o objeto Bidu
    bidu.apresenteSe();

    bidu.cumprimente(coragem);


}