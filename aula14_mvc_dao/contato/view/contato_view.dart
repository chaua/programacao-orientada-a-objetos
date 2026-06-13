import 'dart:io';
import '../model/contato.dart';

/// View significa visão.
///
/// A View é a parte da aplicação que conversa com o usuário.
/// Ela mostra menus, lê dados digitados e exibe mensagens.
/// Ela não salva arquivo e não decide regras de negócio.
class ContatoView {
  /// Mostra o menu principal.
  void exibirMenu() {
    print('=== Agenda MVC + DAO ===');
    print('1) Cadastrar contato');
    print('2) Listar contatos');
    print('3) Atualizar contato');
    print('4) Deletar contato');
    print('9) Sair');
    print();
  }

  /// Lê a opção escolhida pelo usuário.
  int lerOpcao() {
    stdout.write('Escolha uma opção: ');
    String? entrada = stdin.readLineSync();
    return int.tryParse(entrada ?? '') ?? -1;
  }

  /// Lê nome e telefone e devolve um objeto Contato.
  Contato lerContato() {
    stdout.write('Nome: ');
    String nome = stdin.readLineSync() ?? '';

    stdout.write('Telefone: ');
    String telefone = stdin.readLineSync() ?? '';

    return Contato(nome, telefone);
  }

  /// Lê o índice do contato que será atualizado ou removido.
  int lerIndice() {
    stdout.write('Número do contato: ');
    String? entrada = stdin.readLineSync();
    return int.tryParse(entrada ?? '') ?? -1;
  }

  /// Mostra a lista de contatos.
  void exibirContatos(List<Contato> contatos) {
    if (contatos.isEmpty) {
      print('Nenhum contato cadastrado.');
      return;
    }

    for (int i = 0; i < contatos.length; i++) {
      print('$i) ${contatos[i]}');
    }
  }

  /// Mostra mensagem de erro para opção inválida.
  void exibirOpcaoInvalida() {
    print('Opção inválida. Tente novamente.');
  }

  /// Mostra uma mensagem genérica.
  void exibirMensagem(String mensagem) {
    print(mensagem);
  }
}
