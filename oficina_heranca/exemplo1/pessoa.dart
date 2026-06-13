
// DEFINIÇÃO DA CLASSE
// - Representa uma pessoa
class Pessoa {
    
    // --------------------------------------------------------
    // ATRIBUTOS 
    // --------------------------------------------------------
    // - Características que definem os objetos desta classe

    late String nome;
    late int idade;

    late String cpf;
    late String rg;

    late String tipoSanguineo;
    late double altura;
    late double peso;

    // --------------------------------------------------------
    // CONSTRUTORES
    // --------------------------------------------------------
    // - Método (função) especial - possui o mesmo nome da classe
    //                            - não tem tipo nem valor de retorno  
    // - Servem para inicializar os objetos
    // - Define o estado vazio do objeto

    // this: serve para identificar o que pertence a classe
    //       usado para resolver problema de ambiguidade
    //       exemplo: variavel local com mesmo nome de atributo


    // Construtor default
    // - Não recebe parâmetros
    Pessoa() {
        nome = "";
        idade = 0;

        cpf = "sem cpf";
        rg = "sem rg";

        tipoSanguineo = "O+";
        altura = 0;
        peso = 0;    
    }

    // --------------------------------------------------------
    // METODOS
    // --------------------------------------------------------
    // - Ações realizadas pelo objeto
    // - Manipulação dos atributos e realização de tarefas

    // Objeto == robozinho que faz algo
    // pra controlar - usamos controle remoto
    // no objeto os metodos são os botões do controle remoto

    void apresenteSe() {
        print('Meu nome eh $nome e tenho $idade anos!');
    }

    void desloqueSe(String destino) {
        print('Estou me deslocando para $destino!');
    }
    
    void calculeIMC() {
        var imc = peso / (altura * altura);
        print('O meu IMC eh $imc'); 
    }

    void calculeStatusIMC() {
        var imc = peso / (altura * altura);
        String status = '';
 
        if (imc < 18.5) {
            status = 'Magreza';
        }
        else if (imc >= 18.5 && imc < 25.0) {
            status = 'Normal';
        }
        else if (imc >= 25.0 && imc < 30.0) {
            status = 'Sobrepeso';
        }
        else {
            status = 'Obesidade';
        }

        print('Meu status eh $status');
    }

    // --------------------------------------------------------
    // MUTANTES / SETTERS
    // --------------------------------------------------------
    // - Serve para modificar o valor de um atributo
    // - Interface de alteração de valores
    // - Permite: aplicação de regras de negócio
    //            rastrear quem está alterando o atributo  
    // - Em inglês: setters

    void setNome(String nome) {
        // Exemplo de ambiguidade - parametro nome eh que está valendo dentro
        // do escopo do método
        // Para acessar o atributo lá de cima usamos o this.
        this.nome = nome;
    }

    void setIdade(int idade) {
        if (idade >= 0) {
            this.idade = idade;
        }
    }

    void aniversario() {
        this.idade++;
    }

    void setPeso(double peso) {
        if (peso > 0) {
            this.peso = peso;
        }
    }

    void setAltura(double altura) {
        // Operador ternário
        // (condição) ? valorV : valorF;
        this.altura = (altura > 0) ? altura : this.altura;
    }

    // --------------------------------------------------------
    // ACESSORES / GETTERS
    // --------------------------------------------------------
    // - Usado qndo se quer consultar o valor de um atributo
    // - Pode ser aplicadas regras de negócio

    String getRg() {
        return rg;
    }

    String getCpf() {
        return cpf;
    }

    double getPeso() {
        return peso;
    }

    double getAlturaEmMetros() {
        return altura;
    }

    double getAlturaEmCentimetros() {
        return altura * 100;
    }

    double getImc() {
        return peso / (altura * altura);
    }




}