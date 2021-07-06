*** Settings ***
Resource        ../pages/MyStore_Pages.robot


Library    SeleniumLibrary

# robot -d ./reports teste_case/MyStore_Tests

*** Keywords ***
Dado que estou no site "MyStore"
    Wait Until Element Is Visible        ${logo}                 
    Capture Page Screenshot

Quando clico em entrar 
    Sleep                                2
    Click Element                        ${login}

E acesso a pagina de cadastro
    Sleep                                2   
    Wait Until Element Is Visible        ${ja_registrado}        
    Capture Page Screenshot

E preencho a area do email de cadastro "${email}" no cadastro
    Click Element                        ${email_cadastro}
    Sleep                                2
    Input Text                           ${email_cadastro}        ${email}

E clico no botão de criar a conta
    Sleep                                2
    Click Element                        ${botao_cadastro}

E clico em Mrs. para definir o genero
    Sleep                                2
    Wait Until Element Is Visible        ${genero}   
    Capture Page Screenshot
    Click Button                         ${genero}           

E preencho o campo de primeiro nome "${nome}"
    Sleep                                2
    Click Element                        ${area_primeiro_nome}
    Sleep                                2
    Input Text                           ${area_primeiro_nome}    ${nome}

E preencho o campo do ultimo nome "${segundo_nome}"
    Sleep                                2
    Click Element                        ${area_segundo_nome}
    Sleep                                2
    Input Text                           ${area_segundo_nome}     ${segundo_nome}

E preencho o campo da senha "${senha}"
    Sleep                                2
    Click Element                        ${area_senha}
    Sleep                                2
    Input Text                           ${area_senha}        ${senha}

E seleciono minha data de aniversario
    Click Element                        ${birth_day}
    Sleep                                2
    Click Element                        ${birth_month}
    Sleep                                2
    Click Element                        ${birth_year}
    Sleep                                2
    Capture Page Screenshot            

E preencho o campo de endereço "${endereco_nome}"
    Sleep                                2
    Click Element                        ${endereco}
    Sleep                                2
    Input Text                           ${endereco}              ${endereco_nome}    

E preencho o campo da cidade "${cidade_nome}"
    Sleep                                2
    Click Element                        ${cidade}
    Sleep                                2
    Input Text                           ${cidade}                ${cidade_nome}
    
E seleciono o meu estado
    Click Element                        ${estado}        

E preencho o campo de codigo postal "${codigo_}"
    Sleep                                2
    Click Element                        ${codigo_postal}
    Sleep                                2
    Input Text                           ${codigo_postal}         ${codigo_}        

E preencho o meu numero de telefone/celular "${celular_}"
    Sleep                                2
    Click Element                        ${celular_numero}
    Sleep                                2
    Input Text                           ${celular_numero}        ${celular_}
    Capture Page Screenshot

E clico no botao de cadastro
    Sleep                                2
    Click Element                        ${botao_registro}

Entao sou cadastrado com sucesso
    Sleep                                2
    Wait Until Element Is Visible        ${lista_desejos}





E acesso a pagina de login
    Sleep                                2  
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot

E preencho o campo do email de usuario "${email}"
    Sleep                                2
    Click Element                        ${registro_email}
    Sleep                                2
    Input Text                           ${registro_email}        ${email}

E preencho o campo do senha do usuario "${senha}"
    Sleep                                2
    Click Element                        ${area_senha}
    Sleep                                2
    Input Text                           ${area_senha}            ${senha}
    Capture Page Screenshot

E clico no botao de login sign in
    Sleep                                2
    Click Element                        ${botao_login}
    Sleep                                2

E acesso o menu de login
    Sleep                                2
    Wait Until Element Is Visible        ${heart_}               
    Capture Page Screenshot

E clico em sair 
    Sleep                                2
    Wait Until Element Is Visible        ${heart_}        
    Click Element                        ${botao_logout}

Entao sou logado e deslogado com sucesso
    Sleep                                2
    Wait Until Element Is Visible        ${botao_home}           
    Capture Page Screenshot




    
E acesso o menu do usuario
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot

E clico na logo
    Click Element                        ${logo}

Entao eu retorno pra pagina inicial
    Wait Until Element Is Visible        ${mais_vendidos}
    Capture Page Screenshot





Quando faco login
    Click Element                        ${login}
    Wait Until Element Is Visible        ${botao_home}
    Sleep                                2
    Capture Page Screenshot
    
    Input Text                           ${registro_email}        ${email}
    Input Text                           ${area_senha}            ${senha}
    Capture Page Screenshot
  
E digito "${busca}" na busca 
    Click Element                        ${area_busca}
    Sleep                                2
    Input Text                           ${area_busca}            ${busca}
    Capture Page Screenshot

E clico no botao de busca
    Sleep                                2
    Click Element                        ${botao_busca}

E acesso o menu de opçoes
    Sleep                                2
    Wait Until Element Is Visible        ${comparacao}    
    Capture Page Screenshot

E seleciono um vestido
    Sleep                                2
    Click Element                        ${botao_vestido}
    Capture Page Screenshot

E clico em adicionar item no carrinho
    Sleep                                2
    Wait Until Element Is Visible        ${enviar_amigo}
    Sleep                                2
    Click Element                        ${adicionar_carrinho}
    Capture Page Screenshot

E clico em checkout
    Sleep                                2
    Wait Until Element Is Visible        ${ok_icon}
    Sleep                                2
    Click Element                        ${checkout}
    Capture Page Screenshot

E clico em fazer checkout
    Sleep                                2
    Wait Until Element Is Visible        ${produto_}
    Click Element                        ${continua_check}
    Capture Page Screenshot

E clico para continuar a compra
    Sleep                                2
    Wait Until Element Is Visible        ${inf_endereco}
    Click Element                        ${continua_check2}

E confirmo os termos e continuo a compra
    Sleep                                2
    Wait Until Element Is Visible        ${delievery_logo}
    Click Element                        ${botao_termos}
    Sleep                                2
    Capture Page Screenshot
    Click Element                        ${botao_check3}

E escolho o pagamento pelo banco
    Sleep                                2
    Wait Until Element Is Visible        ${pagamento_opcao1}
    Capture Page Screenshot
    Sleep                                2
    Click Element                        ${pagamento_opcao1}

E confirmo meu pedido
    Sleep                                2
    Wait Until Element Is Visible        ${confirma_pedido}
    Capture Page Screenshot
    Click Element                        ${confirma_pedido}

E encerro meu pedido
    Sleep                                2
    Wait Until Element Is Visible        ${encerra_pedido}
    Capture Page Screenshot
    Click Element                        ${encerra_pedido}
    
Entao vejo o historico do pedido
    Sleep                                2
    Wait Until Element Is Visible        ${lista_pedidos}
    Capture Page Screenshot





Quando clico na opção de login
    Sleep                                2
    Click Element                        ${login}

E entro no menu de login 
    Sleep                                2
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot

E clico no botao de esqueceu a senha
    Sleep                                2
    Wait Until Element Is Visible        ${esqueceu_senha}
    Click Element                        ${esqueceu_senha}

E acesso ao menu de troca de senha
    Sleep                                2
    Wait Until Element Is Visible        ${botao_troca_senha}
    Capture Page Screenshot

E preencho o campo do email "${email}"
    Sleep                                2
    Wait Until Element Is Visible        ${registro_email}
    Click Element                        ${registro_email}
    Sleep                                2
    Input Text                           ${registro_email}           ${email}
    Capture Page Screenshot

E clico em "recuperar a senha"
    Sleep                                2
    Click Element                        ${botao_troca_senha}

Entao eu troco minha senha com sucesso 
    Sleep                                2
    Wait Until Element Is Visible        ${confirmacao}
    Capture Page Screenshot





Quando eu sou logado
    Click Element                        ${login}
    Wait Until Element Is Visible        ${botao_home}
    Sleep                                2
    Capture Page Screenshot
    Click Element                        ${registro_email}
    Input Text                           ${registro_email}           ${email}
    Sleep                                2
    Click Element                        ${area_senha}
    Input Text                           ${area_senha}               ${senha}
    Capture Page Screenshot
    Click Element                        ${botao_login}

E clico em adicionar na lista de desejos
    Sleep                                2
    Wait Until Element Is Visible        ${adicionar_carrinho}
    Click Element                        ${botao_lista_desejo}
    Capture Page Screenshot

E vou no meu perfil
    Sleep                                2
    Click Element                        ${botao_sair}
    Capture Page Screenshot
    Sleep                                2
    Wait Until Element Is Visible        ${login}
    Click Element                        ${login}

E entro na minha lista
    Sleep                                2
    Wait Until Element Is Visible        ${botao_home}
    Capture Page Screenshot
    Click Element                        ${lista_desejos}

Entao removo o item da lista
    Sleep                                2
    Wait Until Element Is Visible        ${cancelar_pedido}
    Capture Page Screenshot
    Click Element                        ${cancelar_pedido}
    Sleep                                2
    Capture Page Screenshot
    Alert Should Be Present             'Do you really want to delete this wishlist ?'
    Capture Page Screenshot





Quando clico no botao "contatar" 
    Click Element                        ${botao_contatar}
    Capture Page Screenshot

E sou redirecionado
    Sleep                                2    
    Wait Until Element Is Visible        ${registro_email}
    
E escolho o assunto
    Click Element                        ${assunto_}
    Sleep                                2
    Capture Page Screenshot


E preencho o pedido "${referencia}"
    Click Element                        ${ref_pedido}
    Sleep                                2
    Input Text                           ${ref_pedido}                ${referencia}
    Capture Page Screenshot

E preencho a mensagem "${mensagem}"
    Sleep                                2
    Input Text                           ${mens_contato}              ${mensagem}
    Capture Page Screenshot
    
E clico em enviar
    Sleep                                2
    Click Element                        ${Mandar_}   

Entao contato a empresa
    Sleep                                2
    Wait Until Element Is Visible        ${enviado}
    Capture Page Screenshot





Quando clico no botao entrar
    Click Element                        ${login}
    Capture Page Screenshot

E irei preencher o email de cadastro "${email}"
    Click Element                        ${email_cadastro}
    Sleep                                2
    Input Text                           ${email_cadastro}             ${email}
    Capture Page Screenshot

E clico em criar conta 
    Sleep                                2
    Click Element                        ${botao_cadastro}

Então não consigo usar o email
    Wait Until Element Is Visible        ${error}
    Capture Page Screenshot





E preencho o email "${email}"
    Wait Until Element Is Visible        ${botao_home}
    Click Element                        ${registro_email}
    Sleep                                2
    Input Text                           ${registro_email}            ${email}    
    Capture Page Screenshot

E preencho a senha errada "${errada_senha}"
    Click Element                        ${area_senha}
    Sleep                                2
    Input Text                           ${area_senha}                ${errada_senha}
    Capture Page Screenshot

E clico no botão para entrar
    Click Element                        ${botao_login}
    Sleep                                2

Então falha na autenticacao
    Wait Until Element Is Visible        ${error}
    Capture Page Screenshot
    




E preencho o email errado "${email_errado}"
    Wait Until Element Is Visible        ${botao_home}
    Sleep                                2
    Click Element                        ${registro_email}
    Sleep                                2                              
    Input Text                           ${registro_email}            ${email_errado}
    Capture Page Screenshot
    
E preencho a senha "${senha}" 
    Sleep                                2
    Click Element                        ${area_senha}
    Sleep                                2
    Input Text                           ${area_senha}                ${senha}
    Capture Page Screenshot        

E clico no botão de entrar
    Sleep                                2
    Click Button                         ${botao_login}

Então a autenticacao falha
    Wait Until Element Is Visible        ${error}        
    Capture Page Screenshot
