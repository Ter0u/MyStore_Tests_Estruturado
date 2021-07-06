*** Settings ***
Resource        ../steps/MyStore_Steps.robot
Resource        ../resources/MyStore_resources.robot

Test Setup               Abrir navegador 
Test Teardown            Fechar navegador

# robot -d ./reports "tests_case/MyStore_Tests.robot"

*** Test Cases ***
CT1: Cadastrar usuario
    # robot -v browser:chrome -t "CT1: Cadastrar usuario" -d ./reports/CT1 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E acesso a pagina de cadastro
    E preencho a area do email de cadastro "bolotinha@gmail.com" no cadastro
    E clico no botão de criar a conta
    E clico em Mrs. para definir o genero
    E preencho o campo de primeiro nome "joao"
    E preencho o campo do ultimo nome "sem braço"
    E preencho o campo da senha "tocomsono"
    E seleciono minha data de aniversario
    E preencho o campo de endereço "sampa"
    E preencho o campo da cidade "cidade de deus"
    E seleciono o meu estado
    E preencho o campo de codigo postal "40048"
    E preencho o meu numero de telefone/celular "11 40028922"
    E clico no botao de cadastro
    Entao sou cadastrado com sucesso



CT2: Fazer logout e login no usuario
    # robot -v browser:chrome -t "CT2: Fazer logout e login no usuario" -d ./reports/CT2 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E acesso a pagina de login
    E preencho o campo do email de usuario "periclesbolotinhaa@gmail.com"
    E preencho o campo do senha do usuario "tocomsono"
    E clico no botao de login sign in
    E clico em sair
    Entao sou logado e deslogado com sucesso



CT3: Retornar ao menu pela logo
    # robot -v browser:chrome -t "CT3: Retornar ao menu pela logo" -d ./reports/CT3 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E acesso o menu do usuario 
    E clico na logo
    Entao eu retorno pra pagina inicial



CT4: Buscar e comprar um vestido
    # robot -v browser:chrome -t "CT4: Buscar e comprar um vestido" -d ./reports/CT4 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E acesso a pagina de login
    E preencho o campo do email de usuario "periclesbolotinhaa@gmail.com"
    E preencho o campo do senha do usuario "tocomsono"
    E clico no botao de login sign in
    E digito "dresses" na busca 
    E clico no botao de busca
    E acesso o menu de opçoes
    E seleciono um vestido
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
    # robot -v browser:chrome -t "CT5: Realizar troca de senha" -d ./reports/CT5 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E entro no menu de login 
    E clico no botao de esqueceu a senha
    E acesso ao menu de troca de senha
    E preencho o email "periclesbolotinhaa@gmail.com"
    E clico em "recuperar a senha"
    Entao eu troco minha senha com sucesso



CT6: Adicionar/Remover um vestido na lista de desejos
    # robot -v browser:chrome -t "CT6: Adicionar/Remover um vestido na lista de desejos" -d ./reports/CT6 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E acesso a pagina de login
    E preencho o campo do email de usuario "periclesbolotinhaa@gmail.com"
    E preencho o campo do senha do usuario "tocomsono"
    E clico no botao de login sign in
    E digito "dresses" na busca 
    E clico no botao de busca
    E acesso o menu de opçoes
    E seleciono um vestido
    E clico em adicionar na lista de desejos
    E vou no meu perfil
    E entro na minha lista
    Entao removo o item da lista



CT7: Realizar contato com a empresa
    # robot -v browser:chrome -t "CT7: Realizar contato com a empresa" -d ./reports/CT7 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico no botao "contatar"  
    E sou redirecionado
    E escolho o assunto
    E preencho o email "periclesbolotinhaa@gmail.com"
    E preencho o pedido "summer dresses"
    E preencho a mensagem "não tem o vestido da cor que eu quero"
    E clico em enviar
    Entao contato a empresa



CT8: Tentativa de registro com email já existente
    # robot -v browser:chrome -t "CT8: Tentativa de registro com email já existente" -d ./reports/CT8 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E irei preencher o email de cadastro "periclesbolotinhaa@gmail.com"
    E clico em criar conta 
    Então não consigo usar o email    



CT9: Tentativa de login com senha errada
    # robot -v browser:chrome -t "CT9: Tentativa de login com senha errada" -d ./reports/CT9 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E preencho o email "periclesbolotinhaa@gmail.com" 
    E preencho a senha errada "peppapig"
    E clico no botão de entrar
    Então falha na autenticacao 



CT10: Tentativa de login com usuario errado
    # robot -v browser:chrome -t "CT10: Tentativa de login com usuario errado" -d ./reports/CT10 "tests_case\MyStore_Tests.robot"
    Dado que estou no site "MyStore"
    Quando clico em entrar 
    E preencho o email errado "bruno surfista@gmail.com"
    E preencho a senha "tocomsono" 
    E clico no botão de entrar
    Então a autenticacao falha


