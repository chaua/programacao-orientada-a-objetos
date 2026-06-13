import 'dart:io';
import '../model/contato.dart';

/// DAO significa Data Access Object, ou objeto de acesso a dados.
///
/// A função do DAO é concentrar todas as operações de persistência.
/// Persistência significa salvar os dados em algum lugar permanente, como arquivo
/// texto ou banco de dados.
///
/// Neste exemplo, o DAO faz o CRUD completo:
/// C - Create: cadastrar contato.
/// R - Read: listar contatos.
/// U - Update: atualizar contato.
/// D - Delete: deletar contato.
class ContatoDao {
  /// Nome do arquivo usado para guardar os contatos.
  ///
  /// O arquivo será criado na mesma pasta em que o programa for executado.
  static const String nomeArquivo = 'contatos.txt';

  /// CREATE: cadastra um novo contato.
  ///
  /// O método carrega a lista atual, adiciona o novo contato e salva tudo de novo.
  void cadastrar(Contato contato) {
    List<Contato> contatos = listar();
    contatos.add(contato);
    _salvarTodos(contatos);
  }

  /// READ: retorna todos os contatos cadastrados.
  ///
  /// Se o arquivo ainda não existir, retorna uma lista vazia.
  List<Contato> listar() {
    File arquivo = File(nomeArquivo);

    if (!arquivo.existsSync()) {
      return [];
    }

    List<String> linhas = arquivo.readAsLinesSync();
    List<Contato> contatos = [];

    for (String linha in linhas) {
      if (linha.trim().isNotEmpty) {
        contatos.add(Contato.deCsv(linha));
      }
    }

    return contatos;
  }

  /// UPDATE: altera um contato existente pela posição na lista.
  ///
  /// Retorna true quando conseguiu atualizar.
  /// Retorna false quando o índice não existe.
  bool atualizar(int indice, Contato novoContato) {
    List<Contato> contatos = listar();

    if (indice < 0 || indice >= contatos.length) {
      return false;
    }

    contatos[indice] = novoContato;
    _salvarTodos(contatos);
    return true;
  }

  /// DELETE: remove um contato pela posição na lista.
  ///
  /// Retorna true quando removeu.
  /// Retorna false quando o índice não existe.
  bool deletar(int indice) {
    List<Contato> contatos = listar();

    if (indice < 0 || indice >= contatos.length) {
      return false;
    }

    contatos.removeAt(indice);
    _salvarTodos(contatos);
    return true;
  }

  /// Método privado que salva a lista inteira no arquivo.
  ///
  /// Ele é privado porque só o próprio DAO deve conhecer esse detalhe interno.
  /// O underline no início do nome indica privacidade em Dart.
  void _salvarTodos(List<Contato> contatos) {
    File arquivo = File(nomeArquivo);

    List<String> linhas = contatos.map((Contato contato) => contato.paraCsv()).toList();
    String conteudo = linhas.join('\n');

    arquivo.writeAsStringSync(conteudo);
  }
}
