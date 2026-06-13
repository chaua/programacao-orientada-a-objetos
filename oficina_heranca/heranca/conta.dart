class Conta {
    int _saldo;
    String cliente;
    int numero;
    int agencia;

    Conta(this.cliente, this.numero, this.agencia) : _saldo = 0;

    depositar(double valor) {
        _saldo = valor * 100
    }


}