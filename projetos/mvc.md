# MVC

## **Projeto MVC**

Exemplo feito em aula:&#x20;

{% file src="../.gitbook/assets/mvc.zip" %}

## Atividade

Exercício: Sistema de Biblioteca com MVC em Dart

#### 1. Contextualização

O padrão arquitetural **MVC** (_Model-View-Controller_) é utilizado para organizar aplicações separando responsabilidades em três camadas principais: **Model**, responsável pela representação dos dados; **View**, responsável pela interação com o usuário; e **Controller**, responsável pela regra de controle do sistema.

Neste exercício, será desenvolvido um sistema simples de biblioteca utilizando a linguagem **Dart** em modo console. O objetivo é aplicar a separação de responsabilidades proposta pelo MVC, organizando o código em classes e pastas específicas.

***

#### 2. Objetivo da atividade

Desenvolver as funcionalidades de um sistema de biblioteca, permitindo:

1. cadastrar livros disponíveis;
2. listar livros emprestados;
3. cadastrar usuários;
4. listar usuários;
5. realizar empréstimo de livros;
6. realizar devolução de livros.

O sistema deverá ser implementado em Dart, seguindo a estrutura MVC apresentada no projeto-base.

***

#### 3. Estrutura do projeto

O projeto deverá manter a seguinte organização:

```
projeto_biblioteca/
├── main.dart
└── biblioteca/
    ├── controller/
    │   └── biblioteca_controller.dart
    ├── model/
    │   ├── livro.dart
    │   └── usuario.dart
    └── view/
        └── biblioteca_view.dart
```

Cada camada deverá possuir uma responsabilidade específica.

A classe `Livro`, localizada na camada `model`, deverá representar os dados de um livro da biblioteca.

A classe `Usuario`, também localizada na camada `model`, deverá representar os dados de um usuário cadastrado no sistema.

A classe `BibliotecaView`, localizada na camada `view`, deverá conter os métodos responsáveis por exibir mensagens, menus e receber dados digitados pelo usuário.

A classe `BibliotecaController`, localizada na camada `controller`, deverá controlar o fluxo da aplicação, armazenar as listas de livros e usuários, além de executar as operações de cadastro, empréstimo e devolução.

***

#### 4. Requisitos funcionais

O sistema deverá apresentar um menu com as seguintes opções:

```
1 - Cadastrar livro disponível
2 - Listar livros emprestados
3 - Cadastrar usuário
4 - Listar usuários
5 - Emprestar livro
6 - Devolver livro
9 - Sair
```
