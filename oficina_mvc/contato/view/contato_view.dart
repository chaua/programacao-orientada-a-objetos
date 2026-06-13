import 'dart:io';
import '../model/contato.dart';

/// View do exemplo MVC sem DAO.
///
/// A View conversa com o usuário pelo terminal.
class ContatoView {
    void exibirMenu() {
        print('=== Agenda ===');
        print();
        print('1) Registrar contato');
        print('2) Listar contatos');
        print('3) Atualizar contato');
        print('4) Deletar contato');
        print('9) Sair');
        print();
    }

    int lerOpcao() {
        stdout.write('>: ');
        String? entrada = stdin.readLineSync();
        return int.tryParse(entrada ?? '') ?? -1;
    }

    Contato lerContato() {
        stdout.write('Nome: ');
        var nome = stdin.readLineSync() ?? '';

        stdout.write('Telefone: ');
        var telefone = stdin.readLineSync() ?? '';

        return Contato(nome, telefone);
    }

    int lerIndice() {
        stdout.write('Número do contato: ');
        var entrada = stdin.readLineSync();
        return int.tryParse(entrada ?? '') ?? -1;
    }

    void exibirContatos(List<Contato> contatos) {
        if (contatos.isEmpty) {
            print('Nenhum contato cadastrado.');
            return;
        }

        for (var i = 0; i < contatos.length; i++) {
            print('$i) ${contatos[i]}');
        }
    }

    void exibirOpcaoInvalida() {
        print('Opção inválida. Tente novamente.');
    }

    void exibirMensagem(String mensagem) {
        print(mensagem);
    }
}
