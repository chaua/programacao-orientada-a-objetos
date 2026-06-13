import 'contato/controller/contato_controller.dart';

/// Ponto de entrada da aplicação MVC com DAO.
///
/// Este arquivo fica propositalmente pequeno.
/// O main apenas cria o controller e inicia a aplicação.
void main() {
  ContatoController contatoController = ContatoController();
  contatoController.executar();
}
