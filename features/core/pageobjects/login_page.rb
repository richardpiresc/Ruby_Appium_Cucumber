require 'rspec/expectations'


class LoginPage

  #def valida_logo
    #find_element(xpath: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView").displayed?
  #end

  def valida_tela_home
    sleep 3
    puts("\nEstou na home do app")
    find_element(xpath: "//android.widget.TextView[@content-desc='Explore climas locais socialmente, com o Sowe']").displayed?
    txt_exploreClimas = find_element(xpath: "//android.widget.TextView[@content-desc='Explore climas locais socialmente, com o Sowe']").text
    puts(txt_exploreClimas)
    find_element(accessibility_id: "Saiba quantas pessoas próximas a você reportaram chuva e receba um aviso antes de sair de casa.").displayed?
    txt_saibaQuantas = find_element(accessibility_id: "Saiba quantas pessoas próximas a você reportaram chuva e receba um aviso antes de sair de casa.").text
    puts(txt_saibaQuantas)
    find_element(accessibility_id: "Entrar").displayed?
    puts("Validou todos elementos da tela")
  end

  def click_btn_entrar
    sleep 2
    find_element(accessibility_id: "Entrar").click
  end
 
  def click_btn_cadastrar
    find_element(accessibility_id: "Cadastrar").displayed?
    find_element(accessibility_id: "Cadastrar").click
    puts("\nClicou em cadastrar")
  end

  def valida_tela_cadastroCelular
    sleep 3
    find_element(xpath: "//android.widget.TextView[contains(@text,'Cadastro')]").displayed?
    txt_cadastro = find_element(xpath: "//android.widget.TextView[contains(@text,'Cadastro')]").text
    puts("\n" + txt_cadastro)
    find_element(accessibility_id: "Celular").displayed?
    txt_celular = find_element(accessibility_id: "Celular").text
    puts(txt_celular)
    find_element(accessibility_id: "Você receberá um código de confirmação no número de telefone celular informado.").displayed?
    txt_voceRecebera = find_element(accessibility_id: "Você receberá um código de confirmação no número de telefone celular informado.").text
    puts(txt_voceRecebera)
  end

  def inserir_celular(celular)
    sleep 3
    find_element(xpath: "//android.widget.EditText[@content-desc='insira o numero de celular']").displayed?
    find_element(xpath: "//android.widget.EditText[@content-desc='insira o numero de celular']").send_keys(celular)
    find_element(xpath: "//android.view.ViewGroup[@content-desc='Botao Avancar']/android.widget.TextView").click
    puts("Inseriu o numero do celular e clicou no botão avançar")
  end

  def valida_tela_nome
    sleep 3
    find_element(accessibility_id: "Nome Completo").displayed?
    txt_nome = find_element(accessibility_id: "Nome Completo").text
    puts("\n" + txt_nome)
  end

  def inserir_nome(nome)
    sleep 3
    find_element(xpath: "//android.widget.EditText[@content-desc='Insira o nome completo']").displayed?
    find_element(xpath: "//android.widget.EditText[@content-desc='Insira o nome completo']").send_keys(nome)
    find_element(xpath: "//android.view.ViewGroup[@content-desc='Botao Avancar']/android.widget.TextView").click
    puts("Inseriu o nome e clicou em no botão avançar")
  end

  def valida_tela_localizacao
    sleep 3
    find_element(accessibility_id: "Localização").displayed?
    txt_localizacao = find_element(accessibility_id: "Localização").text
    puts("\n" + txt_localizacao)
    find_element(accessibility_id: "Para entregarmos informações mais precisas sobre o seu micro-clima, precisamos utilizar a sua localização automática.").displayed?
    txt_paraEntregarmos = find_element(accessibility_id: "Para entregarmos informações mais precisas sobre o seu micro-clima, precisamos utilizar a sua localização automática.").text
    puts(txt_paraEntregarmos)
  end

  def click_localizacaoAutomatica
    find_element(xpath: "//android.view.ViewGroup[@content-desc='LOCALIZAÇÃO AUTOMÁTICA']/android.widget.TextView").displayed?
    find_element(xpath: "//android.view.ViewGroup[@content-desc='LOCALIZAÇÃO AUTOMÁTICA']/android.widget.TextView").click
    puts("Clicou em Localização automática")
  end

  def valida_modal_localizacao
    sleep 2
    find_element(accessibility_id: "Compartilhar a localização").displayed?
    txt_compartilhar = find_element(accessibility_id: "Compartilhar a localização").text
    puts(txt_compartilhar)
    find_element(accessibility_id: "Blablabla, enquanto usa o app. Lorem ipsum dolor sit amet.").displayed?
    txt_blaBlaBla = find_element(accessibility_id: "Blablabla, enquanto usa o app. Lorem ipsum dolor sit amet.").text
    puts(txt_blaBlaBla)
    find_element(accessibility_id: "Não").displayed?
  end

  def click_simCompartilharLocalizacao
    find_element(accessibility_id: "Sim").displayed?
    find_element(accessibility_id: "Sim").click
    puts("clicou na opção Sim")
  end 

  def valida_tela_logada
    sleep 2
    find_element(accessibility_id: "Sowe").displayed?
    find_element(accessibility_id: "Botão Sair").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'BAIXA')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'ALTA')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'CHANCE CH.')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'CHUVA')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'VENTO')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'RAIOS UV')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'HUMIDADE')]").displayed?
    find_element(xpath: "//android.widget.TextView[contains(@text,'JÁ É SENSASSÃO')]").displayed?
    #find_element(xpath: "android.view.ViewGroup[4]/android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup").displayed?
    #hora_selecionada = find_element_by_coordinates(698, 2929).text
    #puts(hora_selecionada)
  end

  def click_btn_sair
    sleep 3
    find_element(accessibility_id: "Botão Sair").click
  end

end