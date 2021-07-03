*** Variables ***

#CT1: Cadastrar usuario
${logo}                                 id=header_logo
${login}                                class=header_user_info
${ja_registrado}                        class=page-subheading
${email_cadastro}                       id=email_create
${email}                                periclesbolotinhaa@gmail.com
${botao_cadastro}                       id=SubmitCreate
${genero}                               id=id_gender2
${area_primeiro_nome}                   id=customer_firstname
${nome}                                 joao
${area_segundo_nome}                    id=customer_lastname
${segundo_nome}                         sem braço
${registro_email}                       id=email
#digitar email
${area_senha}                           id=passwd
${senha}                                tocomsono
${birth_day}                            xpath=//div[@id='uniform-days']//option[@value='6']
${birth_month}                          xpath=//div[@id='uniform-months']//option[@value='6']                         
${birth_year}                           xpath=//div[@id='uniform-years']//option[@value='2016']
${endereco}                             id=address1
${endereco_nome}                        sampa
${cidade}                               id=city
${cidade_nome}                          cidade de deus
${codigo_postal}                        id=postcode
${codigo_}                              40048
${estado}                               xpath=//select[@id='id_state']//option[@value='6']
${celular_numero}                       id=phone_mobile
${celular_}                             11 40028922
${botao_registro}                       id=submitAccount
${minha_conta}                          class=page-heading

#CT2: Fazer logout e login no usuario
#clicar no botao login
${botao_home}                           class=home
${botao_login}                          id=SubmitLogin
#minha conta
${heart_}                               class=icon-heart
${botao_logout}                         class=header_user_info


#CT3: Retornar ao menu pela logo
${mais_vendidos}                        xpath=//li[@class='active']//a[@data-toggle='tab']                        
#clicar na logo


#CT4: Buscar e comprar um vestido
${area_busca}                           id=search_query_top
${busca}                                dresses
${botao_busca}                          name=submit_search
${comparacao}                           class=compare-form
${botao_vestido}                        xpath=//div[@class='product-image-container']//a[@class='product_img_link']
${enviar_amigo}                         id=send_friend_button
${adicionar_carrinho}                   class=exclusive
${ok_icon}                              class=icon-ok
${checkout}                             class=btn btn-default button button-medium
${produto_}                             id=product_5_19_0_530776
${continua_check}                       class=button btn btn-default standard-checkout button-medium
${inf_endereco}                         for=addressesAreEquals
${continua_check2}                      name=processAddress
${delievery_logo}                       class=delivery_option_logo
${botao_termos}                         id=cgv
${botao_check3}                         name=processCarrier
${pagamento_opcao1}                     class=bankwire
${confirma_pedido}                      class=button btn btn-default button-medium
${encerra_pedido}                       class=button-exclusive btn btn-default
${lista_pedidos}                        id=order-list

#CT5: Realizar troca de senha
#fazer logout
${esqueceu_senha}                       class=lost_passwordform-group
#digitar email
${botao_troca_senha}                    class=submit
${confirmacao}                          class=alert alert-success

#CT6: Adicionar/Remover um vestido na lista de desejos
#fazer login
${botao_lista_desejo}                   id=wishlist_button
#clicar no botao de login/usuario
${lista_desejos}                        class=lnk_wishlist
${lista_}                               id=block-history
${botao_sair}                           title=Perto
${cancelar_pedido}                      class=wishlist_delete                
${confirmar_cancela}                    class=icon

#CT7: Realizar contato com a empresa 
${botao_contatar}                       id=contact-link
${assunto_}                             //select[@id='id_contact']//option[@value='1']
${ref_pedido}                           id=id_order
${referencia}                           summer dresses
${mens_contato}                         id=message
${mensagem}                             não tem o vestido da cor que eu quero
${Mandar_}                              id=submitMessage
${enviado}                              xpath=//div[@id='center_column']//p[@class='alert alert-success']

#CT8: Tentativa de registro com email já existente
#fazer logout
#clicar em entrar
#preencher area de email
#clicar no botao de cadastro
${error}                                xpath=//div[@id='center_column']//div[@class='alert alert-danger']

#CT9: Tentativa de login com senha errada
#clicar em entrar
#preencher email
${errada_senha}                         peppapig
#clicar no botao de entrar
#existe 1 erro

#CT10: Tentativa de login com usuario errado
#clicar em entrar
${email_errado}                         estoucomfome@gmail.com
#preencher com senha                    
#clicar no botao entrar
#existe 1 erro

