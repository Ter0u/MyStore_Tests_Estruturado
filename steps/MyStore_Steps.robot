*** Settings ***
Resource        ../pages/MyStore_Pages.robot


Library    SeleniumLibrary

*** Keywords ***
Dado que estou no site "MyStore"
    Wait Until Element Is Visible        ${logo}                 
    Capture Page Screenshot

Quando clico na opcao de login "sign in"
    Click Element                        ${login}

E acesso a pagina de cadastro
    Sleep                                                        05    
    Wait Until Element Is Visible        ${ja_registrado}        
    Capture Page Screenshot

E preencho a area do email no cadastro
    Input Text                           ${email_cadastro}        ${email}

E clico no botão de criar a conta
    Click Element                        ${botao_cadastro}

E clico em Mrs. para definir o genero
    Sleep                                                        05    
    Capture Page Screenshot
    Click Element                        ${genero}

E preencho o campo de primeiro nome
    Input Text                           ${area_primeiro_nome}    ${nome}

E preencho o campo do ultimo nome
    Input Text                           ${area_segundo_nome}     ${segundo_nome}

E preencho o campo do email 
    Input Text                           ${registro_email}        ${email}

E preencho o campo da senha
    Input Text                           ${area_senha}            ${senha}

E seleciono minha data de aniversario
    Click Element                        ${birth_day}
    Click Element                        ${birth_month}
    Click Element                        ${birth_year}
    Capture Page Screenshot            

E preencho o campo de endereço
    Input Text                           ${endereco}              ${endereco_nome}    

E preencho o campo da cidade
    Input Text                           ${cidade}                ${cidade_nome}
    
E seleciono o meu estado
    Click Element                        ${estado}        

E preencho o campo de codigo postal
    Input Text                           ${codigo_postal}         ${codigo_}        

E preencho o meu numero de telefone/celular
    Input Text                           ${celular_numero}        ${celular_}
    Capture Page Screenshot

E clico no botao de cadastro
    Click Element                        ${botao_registro}

Entao sou cadastrado com sucesso
    Wait Until Element Is Visible        ${minha_conta}

###########################################################################################

Dado que estou no site
    Wait Until Element Is Visible        ${logo}    
    Capture Page Screenshot

Quando clico em entrar   
    Click Element                        ${login}
    Capture Page Screenshot

E acesso a pagina de login
    Sleep                                                        05    
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot

E preencho o campo do email de usuario
    Input Text                           ${registro_email}    ${email}

E preencho o campo do senha do usuario
    Input Text                           ${area_senha}    ${senha}
    Capture Page Screenshot

E clico no botao de login "sign in"
    Click Element                        ${botao_login}
    Sleep                                                        05

E acesso o menu de login
    Wait Until Element Is Visible        ${heart_}               
    Capture Page Screenshot

E clico em sair 
    Wait Until Element Is Visible        ${heart_}        
    Click Element                        ${botao_logout}

Entao sou logado e deslogado com sucesso
    Wait Until Element Is Visible        ${botao_home}           
    Capture Page Screenshot

###########################################################################################

Dado que acesso o site
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot

Quando clico no usuario
    Click Element                        ${login}
    
E acesso o menu do usuario
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot

E clico na logo
    Click Element                        ${logo}

Entao eu retorno pra pagina inicial
    Wait Until Element Is Visible        ${mais_vendidos}
    Capture Page Screenshot

###########################################################################################

Dado que estou no site MyStore
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot

Quando faco login
    Click Element                        ${login}
    Wait Until Element Is Visible        ${botao_home}
    Sleep                                05
    Capture Page Screenshot
    Input Text                           ${registro_email}    ${email}
    Input Text                           ${area_busca}        ${senha}
    Capture Page Screenshot
  
E digito "dresses" na busca 
    Input Text                           ${area_busca}         ${busca}
    Capture Page Screenshot

E clico no botao de busca
    Click Element                        ${botao_busca}

E acesso o menu de opçoes
    Sleep                                05
    Wait Until Element Is Visible        ${comparacao}    
    Capture Page Screenshot

E clico em um item
    Click Element                        ${botao_vestido}
    Capture Page Screenshot

E clico em adicionar item no carrinho
    Sleep                                05
    Click Button                         ${adicionar_carrinho}
    Capture Page Screenshot

E clico em checkout
    Wait Until Element Is Visible        ${ok_icon}
    Click Element                        ${checkout}
    Capture Page Screenshot

E clico em fazer checkout
    Wait Until Element Is Visible        ${produto_}
    Click Element                        ${continua_check}
    Capture Page Screenshot

E clico para continuar a compra
    Wait Until Element Is Visible        ${inf_endereco}
    Click Element                        ${continua_check2}

E confirmo os termos e continuo a compra
    Wait Until Element Is Visible        ${delievery_logo}
    Click Element                        ${botao_termos}
    Capture Page Screenshot
    Click Element                        ${botao_check3}

E escolho o pagamento pelo banco
    Wait Until Element Is Visible        ${pagamento_opcao1}
    Capture Page Screenshot
    Click Element                        ${pagamento_opcao1}

E confirmo meu pedido
    Wait Until Element Is Visible        ${confirma_pedido}
    Capture Page Screenshot
    Click Element                        ${confirma_pedido}

E encerro meu pedido
    Wait Until Element Is Visible        ${encerra_pedido}
    Capture Page Screenshot
    Click Element                        ${encerra_pedido}
    
Entao vejo o historico do pedido
    Wait Until Element Is Visible        ${lista_pedidos}
    Capture Page Screenshot

###########################################################################################

Dado que entro no site
    Wait Until Element Is Visible       ${logo}
    Capture Page Screenshot

Quando clico na opção de login
    Click Element                       ${login}

E entro no menu de login 
    Wait Until Element Is Visible       ${botao_home}
    Capture Page Screenshot

E clico no botao de "esqueceu a senha"
    Click Element                       ${esqueceu_senha}

E acesso ao menu de troca de senha
    Wait Until Element Is Visible       ${botao_troca_senha}
    Capture Page Screenshot

E preencho o campo do email usuario
    Input Text                          ${registro_email}   ${email}
    Capture Page Screenshot

E clico em "recuperar a senha"
    Click Element                       ${botao_troca_senha}

Entao eu troco minha senha com sucesso 
    Wait Until Element Is Visible       ${confirmacao}
    Capture Page Screenshot

###########################################################################################

Dado que acesso ao site
    Wait Until Element Is Visible       ${logo}
    Capture Page Screenshot

Quando eu sou logado
    Click Element                       ${login}
    Wait Until Element Is Visible       ${botao_home}
    Capture Page Screenshot
    Input Text                          ${registro_email}    ${email}
    Input Text                          ${area_senha}        ${senha}
    Capture Page Screenshot
    Click Element                       ${botao_login}

E pesquiso por vestidos
    Input Text                          ${area_busca}        ${busca}
    Capture Page Screenshot
    Click Element                       ${botao_busca}

E seleciono um vestido
    Wait Until Element Is Visible       ${comparacao}    
    Capture Page Screenshot
    Click Element                       ${botao_vestido}
    Capture Page Screenshot

E clico em adicionar na lista de desejos
    Wait Until Element Is Visible       ${adicionar_carrinho}
    Click Element                       ${botao_lista_desejo}
    Capture Page Screenshot

E vou no meu perfil
    Click Element                       ${botao_sair}
    Capture Page Screenshot
    Wait Until Element Is Visible       ${login}
    Click Element                       ${login}

E entro na minha lista
    Wait Until Element Is Visible       ${botao_home}
    Capture Page Screenshot
    Click Element                       ${lista_desejos}

Entao removo o item da lista
    Wait Until Element Is Visible       ${cancelar_pedido}
    Capture Page Screenshot
    Click Element                       ${cancelar_pedido}
    Capture Page Screenshot
    Wait Until Element Is Visible       ${confirmar_cancela}
    Capture Page Screenshot

###########################################################################################

Dado que estou logado
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot

Quando clico no botao "contatar" 
    Click Element                        ${botao_contatar}
    Capture Page Screenshot

E sou redirecionado
    Sleep                                05    
    Wait Until Element Is Visible        ${registro_email}
    
E escolho o assunto
    Click Element                        ${assunto_}
    Capture Page Screenshot

E preencho o email para contato
    Input Text                           ${registro_email}    ${email}
    Capture Page Screenshot

E preencho o pedido
    Input Text                           ${ref_pedido}    ${referencia}
    Capture Page Screenshot

E preencho a mensagem
    Input Text                           ${mens_contato}    ${mensagem}
    Capture Page Screenshot
    
E clico em enviar
    Click Element                        ${Mandar_}   

Entao contato a empresa
    Wait Until Element Is Visible        ${enviado}
    Capture Page Screenshot

###########################################################################################

Dado quando estou no site
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot
    
Quando clico no botao entrar
    Click Element                        ${login}
    Capture Page Screenshot

E irei preencher o email
    Input Text                           ${email_cadastro}    ${email}
    Capture Page Screenshot

E clico em criar conta 
    Click Element                        ${botao_cadastro}

Então não consigo usar o email
    Wait Until Element Is Visible        ${error}
    Capture Page Screenshot

###########################################################################################

Dado que no site
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot

Quando realizo o login
    Click Element                        ${login}
    Capture Page Screenshot

E preencho o email
    Wait Until Element Is Visible        ${botao_home}
    Input Text                           ${registro_email}    ${email}    
    Capture Page Screenshot

E preencho a senha errada
    Input Text                           ${area_senha}    ${errada_senha}
    Capture Page Screenshot

E clico no botão para entrar
    Click Element                        ${botao_login}

Então falha na autenticacao
    Wait Until Element Is Visible        ${error}
    Capture Page Screenshot
    
###########################################################################################

Dado no site
    Wait Until Element Is Visible        ${logo}
    Capture Page Screenshot

Quando clico no perfil
    Click Element                        ${login}
    Capture Page Screenshot

E preencho o email errado
    Wait Until Element Is Visible        ${botao_home}
    Input Text                           ${registro_email}    ${email_errado}
    Capture Page Screenshot
    
E preencho a senha 
    Input Text                           ${area_senha}        ${senha}
    Capture Page Screenshot        

E clico no botão de entrar
    Click Button                         ${botao_login}

Então a autenticacao falha
    Wait Until Element Is Visible        ${error}        10
    Capture Page Screenshot

###########################################################################################