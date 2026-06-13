import 'pessoa.dart';

void main() {

    // Criando nosso primeiro objeto
    // - Na orientação a objetos, o objeto é responsável pelos seus
    //   próprios atributos
    // - Permitir somente que o próprio objeto manipule seus atributos
    Pessoa pessoa = Pessoa();

    // Não é uma boa prática!
    // pessoa.nome = "Homer Simpson";
    // pessoa.idade = 40;

    // Chamada dos métodos mutantes
    pessoa.setNome('Homer Simpson');
    pessoa.setIdade(-40);

    pessoa.apresenteSe();

    pessoa.setPeso(100);     // Não pode peso negativo
    pessoa.setAltura(1.80);   // Não pode altura negativa

    pessoa.calculeIMC();        // Calcula e imprime na tela
    pessoa.calculeStatusIMC();  // Imprime o nivel de obesidade
                                // Pegar a tabelinha de IMC

    // print('CPF = $pessoa.getCpf()'); // Imprime apenas o objeto
    
    print('CPF = ${pessoa.getCpf()}');
    print('2 + 2 = ${2 + 2}');
    

    pessoa.nome = 'Banana';
    pessoa.apresenteSe();




}