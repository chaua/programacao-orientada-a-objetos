/// VO significa Value Object, ou objeto de valor.
///
/// Nesta aplicação, Contato é o objeto que transporta os dados entre as camadas.
/// Ele não lê teclado, não imprime menu e não acessa arquivo.
/// A responsabilidade dele é representar os dados de um contato.
class Contato {
  String nome;
  String telefone;

  /// Construtor do contato.
  Contato(this.nome, this.telefone);

  /// Converte o contato para uma linha de arquivo texto.
  ///
  /// O caractere ; foi escolhido como separador entre nome e telefone.
  /// Exemplo de linha gerada: Ana;41999999999
  String paraCsv() {
    return '${_escapar(nome)};${_escapar(telefone)}';
  }

  /// Cria um Contato a partir de uma linha lida do arquivo.
  ///
  /// O factory é um construtor especial. Ele permite criar o objeto usando
  /// uma regra diferente da regra do construtor principal.
  factory Contato.deCsv(String linha) {
    List<String> partes = linha.split(';');
    String nome = partes.isNotEmpty ? _desescapar(partes[0]) : '';
    String telefone = partes.length > 1 ? _desescapar(partes[1]) : '';
    return Contato(nome, telefone);
  }

  /// Remove caracteres que poderiam quebrar o formato do arquivo.
  ///
  /// Para uma aula inicial, esta regra simples já evita que quebras de linha e
  /// ponto e vírgula atrapalhem a leitura do arquivo.
  static String _escapar(String valor) {
    return valor.replaceAll('\n', ' ').replaceAll(';', ',');
  }

  /// Neste exemplo, a leitura só precisa devolver o próprio valor.
  ///
  /// O método existe para deixar claro onde uma regra de conversão inversa
  /// poderia ser colocada em sistemas maiores.
  static String _desescapar(String valor) {
    return valor;
  }

  @override
  String toString() {
    return '$nome - $telefone';
  }
}
