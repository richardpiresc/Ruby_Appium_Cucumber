# Desafio Ruby com Appium e Cucumber
------------------------------------

Projeto criado para realizar testes automatizados no Android, utilizando estrura Page Object, com capitura de elemtos dentro das pages.

**Tecnologias utilizadas**

# Ruby
Uma linguagem de programação dinâmica e open-source com foco na simplicidade e produtividade. Tem uma sintaxe elegante que é natural de ler e fácil de escrever. 

# Appium
Ferramenta open-source utilizada para automação mobile em aplicativos Android ou IOS.

# Cucumber
Ferramenta open-source utilizada para criação de BDDs, utilizando escrita em Gherkin.


**Para executar o código deve-se**

- Utilizar algum editor de texto de sua preferencia, por exp:(Visual Studio Code, Sublime, ...)
- Instalar o Node.js
- Instalar o Appium desktop
- Instalar o Appium inspector
- Instalar o Android Studio
- No Android Studio (File > Settings > digite no campo de pesquisa "SDK"), agora marque a opção Hide Obsolete Pakages e selecione a SKD obsoleta (Android SDK Tools (Obsolete) para fazer o download) 
- Instalar Java JDK 1.8
- Instalar o Ruby
- Criar as variáveis de ambiente
 - variável: %JAVA_HOME% value:(\Java\jdk1.8.0_341) #colocar o local do arquivo jdk 1.8 
 - variável: %ANDROID_HOME% value:(\Local\Android\Sdk) #colocar o local do skd da instalação do android studio
 - Adicionar à variável PATH os diretórios
  PATH=$PATH:$ANDROID_HOME/platform-tools
  PATH=$PATH:$ANDROID_HOME/tools
  PATH=$PATH:$ANDROID_HOME/tools/bin
  PATH=$PATH:$ANDROID_HOME/tools/lib
  PATH=$PATH:$JAVA_HOME/bin
- No seu cmd, instalar as dependencias appium_lib (gem install appium_lib)
- No seu cmd, instalar o cucumber (gem install cucumber)
- No seu cmd, instalar o appium-doctor para verificar se sua maquina tem tudo de          necessário para rodar o appium (npm install appium-doctor)
- No seu cmd, executar o (bundle install) para instalar as dependencias do arquivo Gemfile

