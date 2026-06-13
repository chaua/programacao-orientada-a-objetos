import 'heroi.dart';
import 'vilao.dart';

/// Classe que coordena a interação entre Heroi e Vilao.
///
/// Este exemplo demonstra associação: os objetos se comunicam durante uma ação,
/// mas um não precisa ser dono permanente do outro.
class CampoBatalha {
    /// Cria os personagens e inicia a luta.
    void iniciarLuta() {
        var heroi = Heroi('Batman');
        var vilao = Vilao('Pinguim');

        executarLuta(heroi, vilao);
    }

    /// Recebe dois objetos prontos e faz um interagir com o outro.
    ///
    /// A luta continua enquanto os dois estiverem vivos.
    void executarLuta(Heroi heroi, Vilao vilao) {
        while (heroi.estaVivo && vilao.estaVivo) {
            // O herói não altera diretamente a vida do vilão.
            // Ele chama um método do vilão, respeitando a responsabilidade da classe Vilao.
            heroi.atacar(vilao);

            // Esta linha ficou comentada para indicar uma possível continuação da aula.
            // vilao.contraAtaca(heroi);
        }
    }
}
