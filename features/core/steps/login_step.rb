Given('que estou no app challengeqa') do
  @login = LoginPage.new

  #@login.valida_logo
  @login.valida_tela_home
end

And('clico em cadastrar') do
  @login.click_btn_cadastrar
end

And(/^informo o celular "([^"]*)"$/) do |celular|
  @login.valida_tela_cadastroCelular
	@login.inserir_celular(celular)
end

And(/^informo o nome "([^"]*)"$/) do |nome| 
  @login.valida_tela_nome
	@login.inserir_nome(nome)
end

When(/^confirmo minha localização$/) do
  @login.valida_tela_localizacao
	@login.click_localizacaoAutomatica
  @login.valida_modal_localizacao
  @login.click_simCompartilharLocalizacao
end

Then('estarei na pagina inicial com informacoes do clima') do
  @login.valida_tela_logada
  #puts("teste Then");
end

And('clico em entrar') do
  @login.click_btn_entrar
end


When('aciono o botao sair') do
  @login.click_btn_sair
  sleep 10
end

Then('sou direcionado para inicial') do
  @login.valida_tela_home
end

