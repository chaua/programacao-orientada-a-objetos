import 'dart:io';

/// Exemplo curto de escrita e leitura de arquivo texto.
void main() {
    // final significa que a variável receberá um valor apenas uma vez.
    // O objeto File representa o arquivo exemplo.txt.
    final arquivo = File('exemplo.txt');

    // FileMode.append adiciona o texto ao final do arquivo.
    // Se não usássemos append, o conteúdo anterior seria apagado.
    arquivo.writeAsStringSync('Primeira linha\n', mode: FileMode.append);
    print('Arquivo gravado com sucesso.');

    // Lê o arquivo como lista de linhas.
    final linhas = arquivo.readAsLinesSync();

    // Percorre cada linha da lista.
    for (final linha in linhas) {
        print('- $linha');
    }

    // Lê o arquivo inteiro como texto único.
    final tudo = arquivo.readAsStringSync();

    // split quebra uma String em partes.
    // Aqui, quebramos o texto sempre que aparece uma quebra de linha.
    print(tudo.split('\n'));
}
