import 'contato/controller/contato_controller.dart';

/// Ponto de entrada da aplicação MVC sem DAO.
void main() {
    // Cria o Controller, que coordena todo o fluxo da aplicação.
    ContatoController contatoController = ContatoController();
    contatoController.executar();
}
