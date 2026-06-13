import 'dart:io';

/// Este exemplo apresenta leitura e escrita de arquivos em Dart.
///
/// Arquivo é uma sequência de bytes salva em disco.
/// Quando gravamos dados em arquivo, dizemos que os dados foram persistidos.
/// Persistência significa que os dados continuam existindo depois que o programa fecha.
void main() {
    // Cria uma referência para o arquivo teste.txt.
    // Se o arquivo não existir, ele será criado na escrita.
    var arquivo = File('teste.txt');

    // Escreve no arquivo.
    // Sem FileMode.append, o conteúdo antigo é substituído.
    arquivo.writeAsStringSync('Oi, ');

    // Escreve no final do arquivo, preservando o que já existia.
    arquivo.writeAsStringSync('mundo!\n', mode: FileMode.append);

    // Em Dart, quando usamos writeAsStringSync, não precisamos fechar manualmente.
    // O próprio método abre, grava e fecha o arquivo.

    // Cria outra referência para o mesmo arquivo, agora para leitura.
    var outro = File('teste.txt');

    // Lê o arquivo inteiro como uma única String.
    var dados = outro.readAsStringSync();
    print(dados);

    // Lê o arquivo como lista de linhas.
    // Cada linha vira uma posição da lista.
    var linhas = outro.readAsLinesSync();
    print(linhas);
}
