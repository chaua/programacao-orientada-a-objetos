# Aula 09 — Interfaces: classes de ordenação

Esta aula apresenta interface em Dart usando o tema de ordenação de listas.

A interface `Ordenador` define um comportamento comum. As classes `OrdenadorBolha`, `OrdenadorSelecao` e `OrdenadorNativo` implementam esse comportamento de formas diferentes.

Conceitos trabalhados:

- `abstract class` usada como interface
- `implements`
- troca de objetos no `main.dart`
- redução de dependência entre o programa principal e as classes concretas

Exercício sugerido:

1. Crie uma nova classe `OrdenadorDecrescente`.
2. Faça essa classe implementar `Ordenador`.
3. O método `ordenar()` deve devolver a lista em ordem decrescente.
4. Adicione o novo objeto na lista `ordenadores` do `main.dart`.
