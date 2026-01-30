# Sistema de Cadastro de Clientes, Produtos e Pedidos

Este projeto é uma aplicação desenvolvida em Delphi para gerenciar clientes, produtos e pedidos, utilizando uma arquitetura em camadas.

## Estrutura do Projeto

- **domain/**: Contém as entidades principais e seus respectivos repositórios.
- **application/**: Serviços de aplicação que encapsulam regras de negócio e operações sobre as entidades.
- **controller/**: Controladores responsáveis por orquestrar as ações entre a camada de aplicação e a interface do usuário.
- **infra/**: Implementações de persistência em memória para as entidades e repositórios.
- **view/**: Formulários visuais para interação do usuário com o sistema.

## Funcionamento

O sistema permite:
- Cadastro de clientes, produtos e pedidos
- Visualização e manipulação dos dados via interface gráfica simples utilizando somente os componentes nativos do Rad Studio 2010
- Persistência dos dados em memória (pode ser adaptado para outros tipos de persistência)

## Requisitos
- Delphi (Rad Studio 2010)
- Windows

## Como Executar
1. Abra o projeto no Delphi.
2. Compile todos os arquivos.
3. Execute o formulário principal (`UFormMain.pas`).

## Observações
- O projeto utiliza uma estrutura modular, facilitando manutenção e expansão.

