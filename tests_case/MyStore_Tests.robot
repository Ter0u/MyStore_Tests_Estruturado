*** Settings ***
Resource        ../steps/MyStore_Steps.robot
Resource        ../resources/MyStore_resources.robot

Test Setup               Abrir navegador 
Test Teardown            Fechar navegador

*** Test Cases ***

CT1: Cadastrar usuario
    Dado que estou no site "MyStore"
    Quando clico na opcao de login "sign in"
    E acesso a pagina de cadastro
    E preencho a area do email no cadastro
    E clico no botão de criar a conta
    E clico em Mrs. para definir o genero
    E preencho o campo de primeiro nome
    E preencho o campo do ultimo nome
    E preencho o campo do email 
    E preencho o campo da senha
    E seleciono minha data de aniversario
    E preencho o campo de endereço
    E preencho o campo da cidade
    E seleciono o meu estado
    E preencho o campo de codigo postal
    E preencho o meu numero de telefone/celular
    E clico no botao de cadastro
    Entao sou cadastrado com sucesso

CT2: Fazer logout e login no usuario
    Dado que estou no site
    Quando clico em entrar 
    E acesso a pagina de login
    E preencho o campo do email de usuario
    E preencho o campo do senha do usuario
    E clico no botao de login "sign in"
    E clico em sair
    Entao sou logado e deslogado com sucesso

CT3: Retornar ao menu pela logo
    Dado que acesso o site
    Quando clico no usuario
    E acesso o menu do usuario 
    E clico na logo
    Entao eu retorno pra pagina inicial

CT4: Buscar e comprar um vestido
    Dado que estou no site MyStore
    Quando faco login
    E digito "dresses" na busca 
    E clico no botao de busca
    E acesso o menu de opçoes
    E clico em um item
    E clico em adicionar item no carrinho
    E clico em checkout
    E clico em fazer checkout 
    E clico para continuar a compra
    E confirmo os termos e continuo a compra
    E escolho o pagamento pelo banco
    E confirmo meu pedido
    E encerro meu pedido
    Entao vejo o historico do pedido


CT5: Realizar troca de senha
    Dado que entro no site
    Quando clico na opção de login
    E entro no menu de login 
    E clico no botao de "esqueceu a senha"
    E acesso ao menu de troca de senha
    E preencho o campo do email usuario
    E clico em "recuperar a senha"
    Entao eu troco minha senha com sucesso

CT6: Adicionar/Remover um vestido na lista de desejos
    Dado que acesso ao site
    Quando eu sou logado
    E pesquiso por vestidos
    E seleciono um vestido
    E clico em adicionar na lista de desejos
    E vou no meu perfil
    E entro na minha lista
    Entao removo o item da lista

CT7: Realizar contato com a empresa
    Dado que estou logado
    Quando clico no botao "contatar"  
    E sou redirecionado
    E escolho o assunto
    E preencho o email
    E preencho o pedido
    E preencho a mensagem
    E clico em enviar
    Entao contato a empresa

CT8: Tentativa de registro com email já existente
    Dado quando estou no site
    Quando clico no botao entrar
    E irei preencher o email
    E clico em criar conta 
    Então não consigo usar o email    

CT9: Tentativa de login com senha errada
    Dado que estou no site
    Quando realizo o login
    E preencho o email
    E preencho a senha errada
    E clico no botão de entrar
    Então falha na autenticacao 

CT10: Tentativa de login com usuario errado
    Dado que estou no site
    Quando clico no perfil 
    E preencho o email errado
    E preencho a senha 
    E clico no botão de entrar
    Então a autenticacao falha


