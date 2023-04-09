@cadastro
Feature: Cadastrar usuário

  @cadastrarUsuario
  Scenario: Validar fluxo de cadastro
    Given que estou no app challengeqa
    And clico em cadastrar
    And informo o celular "13981333499"
    And informo o nome "Richard Pires"
    When confirmo minha localização
    Then estarei na pagina inicial com informacoes do clima

