// Aula 15 — Banco de Dados em Dart
// Tema: conexão simples com banco de dados SQLite.
//
// Este exemplo usa o pacote sqlite3.
// O SQLite é um banco de dados simples que fica salvo em um arquivo.
// Neste exemplo, o arquivo do banco se chamará escola.db.
//
// Para executar somente esta aula:
// 1) Abra o terminal nesta pasta.
// 2) Execute: dart pub get
//    Esse comando baixa a biblioteca sqlite3 declarada no pubspec.yaml.
// 3) Execute: dart run main.dart

import 'dart:io';

// Este import vem do pacote sqlite3.
// Ele permite abrir uma conexão com o banco e executar comandos SQL.
import 'package:sqlite3/sqlite3.dart';

void main() {
  // Platform.script aponta para o arquivo main.dart que está sendo executado.
  // Com isso, conseguimos descobrir a pasta da aula.
  // Essa estratégia evita depender da pasta em que o terminal foi aberto.
  final pastaDaAula = File(Platform.script.toFilePath()).parent.path;

  // Platform.pathSeparator usa o separador correto do sistema operacional.
  // No Windows, o separador é "\\". No Linux e macOS, é "/".
  final caminhoBanco = '$pastaDaAula${Platform.pathSeparator}escola.db';

  // Aqui acontece a conexão com o banco de dados.
  // Se o arquivo escola.db não existir, o SQLite cria automaticamente.
  // Se o arquivo já existir, o SQLite apenas abre a conexão com ele.
  final banco = sqlite3.open(caminhoBanco);

  // O bloco try/finally garante que a conexão seja fechada no final.
  // Isso é importante para liberar o arquivo do banco de dados corretamente.
  try {
    print('Banco conectado em: $caminhoBanco');

    // SQL significa Structured Query Language.
    // É a linguagem usada para criar tabelas, inserir dados e consultar dados.
    //
    // CREATE TABLE cria uma tabela.
    // IF NOT EXISTS evita erro caso a tabela já tenha sido criada antes.
    banco.execute('''
      CREATE TABLE IF NOT EXISTS alunos (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        idade INTEGER NOT NULL
      );
    ''');

    // Este DELETE deixa o exemplo sempre igual a cada execução.
    // Sem isso, os mesmos alunos seriam inseridos novamente toda vez.
    banco.execute('DELETE FROM alunos;');

    // INSERT INTO adiciona novos registros na tabela.
    // Os pontos de interrogação (?) são parâmetros.
    // Usar parâmetros é melhor do que montar SQL com concatenação de texto,
    // porque evita erros e reduz riscos de SQL injection.
    banco.execute(
      'INSERT INTO alunos (nome, idade) VALUES (?, ?);',
      ['Ana', 20],
    );

    banco.execute(
      'INSERT INTO alunos (nome, idade) VALUES (?, ?);',
      ['Bruno', 22],
    );

    banco.execute(
      'INSERT INTO alunos (nome, idade) VALUES (?, ?);',
      ['Carla', 19],
    );

    // UPDATE altera um registro que já existe.
    // Neste caso, estamos mudando a idade da aluna Ana.
    banco.execute(
      'UPDATE alunos SET idade = ? WHERE nome = ?;',
      [21, 'Ana'],
    );

    // SELECT consulta dados da tabela.
    // O resultado é uma lista de linhas.
    final alunos = banco.select(
      'SELECT id, nome, idade FROM alunos ORDER BY id;',
    );

    print('\nAlunos cadastrados no banco:');

    // Cada linha funciona como um mapa.
    // A chave é o nome da coluna: id, nome ou idade.
    for (final linha in alunos) {
      print(
        'ID: ${linha['id']} | Nome: ${linha['nome']} | Idade: ${linha['idade']}',
      );
    }

    // SELECT também pode usar parâmetros.
    // Aqui buscamos apenas alunos com idade maior ou igual a 21.
    final idadeMinima = 21;
    final alunosFiltrados = banco.select(
      'SELECT nome, idade FROM alunos WHERE idade >= ? ORDER BY idade;',
      [idadeMinima],
    );

    print('\nAlunos com idade maior ou igual a $idadeMinima:');
    for (final linha in alunosFiltrados) {
      print('${linha['nome']} tem ${linha['idade']} anos.');
    }
  } finally {
    // dispose fecha a conexão com o banco.
    // É uma boa prática fechar conexões quando não vamos mais usar.
    banco.dispose();
    print('\nConexão com o banco encerrada.');
  }
}
