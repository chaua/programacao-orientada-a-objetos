class Cachorro {

    // -----------------------------------------------
    // ATRIBUTOS
    // -----------------------------------------------

    // Modificadores de acesso
    // - indica se um atributo ou método são acessíveis fora do objeto
    //      - privado (private): acessíveis somente pelo objeto
    //      + público (public); acessíveis por todo mundo    
    //      # protegido: acessíveis somente via herança
    //        default/package: acessíveis somente no mesmo pacote

    // Encapsulamento
    // - ATRIBUTOS SÃO SEMPRE PRIVADOS!!!!!!!!!!!!!!!!!!!!!!!!!!!
    // - Em dart, atributos/métodos privados começam com _

    late String _nome;
    late int _idade;

    // -----------------------------------------------
    // CONSTRUTORES
    // -----------------------------------------------

    Cachorro(String nome, int idade) {
        _nome = nome;
        _idade = idade;
    }

    // -----------------------------------------------
    // MÉTODOS
    // -----------------------------------------------

    void apresenteSe() {
        print('Meu nome eh $_nome! au au');
    }

    void cumprimente(Cachorro outro) {
        print('Olá, ${outro.getNome()}! Como estás?');
        outro.cumprimenteDeVolta(this);
    }

    void cumprimenteDeVolta(Cachorro outro) {
        print('Olá, ${outro.getNome()}! Estou bem.');
    }

    String getNome() {
        return _nome;
    }



}