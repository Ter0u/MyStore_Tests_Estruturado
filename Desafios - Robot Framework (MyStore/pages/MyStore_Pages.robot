*** Variables ***

#CT1: Cadastrar usuario
${logo}                                 xpath=//div[@id='header_logo']
${login}                                xpath=//div[@class='header_user_info']
${ja_registrado}                        xpath=//h3[@class='page-subheading']
${email_cadastro}                       xpath=//input[@id='email_create']
${botao_cadastro}                       xpath=//button[@id='SubmitCreate']
${genero}                               xpath=//input[@id='id_gender1']
${area_primeiro_nome}                   xpath=//input[@id='customer_firstname']
${area_segundo_nome}                    xpath=//input[@id='customer_lastname']
${registro_email}                       xpath=//input[@id='email']
${area_senha}                           xpath=//input[@id='passwd']
${birth_day}                            xpath=//div[@id='uniform-days']//option[@value='6']
${birth_month}                          xpath=//div[@id='uniform-months']//option[@value='6']                         
${birth_year}                           xpath=//div[@id='uniform-years']//option[@value='2016']
${endereco}                             xpath=//input[@id='address1']
${cidade}                               xpath=//input[@id='city']
${codigo_postal}                        xpath=//input[@id='postcode']
${estado}                               xpath=//select[@id='id_state']//option[@value='6']
${celular_numero}                       xpath=//input[@id='phone_mobile']
${botao_registro}                       xpath=//button[@id='submitAccount']

##########################################################################################

#CT2: Fazer logout e login no usuario
${botao_home}                           xpath=//a[@class='home']
${botao_login}                          xpath=//button[@id='SubmitLogin']
${heart_}                               xpath=//i[@class='icon-heart']
${botao_logout}                         xpath=//a[@class='logout']

##########################################################################################

#CT3: Retornar ao menu pela logo
${mais_vendidos}                        xpath=//li[@class='active']//a[@data-toggle='tab']                        
#clicar na logo

##########################################################################################

#CT4: Buscar e comprar um vestido
${area_busca}                           xpath=//input[@id='search_query_top']
${botao_busca}                          xpath=//button[@name='submit_search']
${comparacao}                           xpath=//div[@class='top-pagination-content clearfix']//form[@class='compare-form']
${botao_vestido}                        xpath=//li[@class='ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line first-item-of-tablet-line first-item-of-mobile-line']//a[@class='product_img_link']
${enviar_amigo}                         xpath=//a[@id='send_friend_button']
${adicionar_carrinho}                   xpath=//p[@id='add_to_cart']//button[@type='submit']
${ok_icon}                              xpath=//i[@class='icon-ok']
${checkout}                             xpath=//a[@class='btn btn-default button button-medium']
${tela_check}                           xpath=//span[@title='Continue shopping']
${produto_}                             xpath=//table[@id='cart_summary']
${continua_check}                       xpath=//a[@class='button btn btn-default standard-checkout button-medium']
${inf_endereco}                         xpath=//p[@class='checkbox addressesAreEquals']
${continua_check2}                      xpath=//button[@name='processAddress']
${delievery_logo}                       xpath=//td[@class='delivery_option_logo']
${botao_termos}                         xpath=//input[@id='cgv']
${botao_check3}                         xpath=//button[@name='processCarrier']
${pagamento_opcao1}                     xpath=//a[@class='bankwire']
${confirma_pedido}                      xpath=//button[@class='button btn btn-default button-medium']
${encerra_pedido}                       xpath=//a[@class='button-exclusive btn btn-default']
${lista_pedidos}                        xpath=//table[@id='order-list']

##########################################################################################

#CT5: Realizar troca de senha
#fazer logout
${esqueceu_senha}                       xpath=//p[@class='lost_password form-group']//a[@title='Recover your forgotten password']
#digitar email
${botao_troca_senha}                    xpath=//button[@class='btn btn-default button button-medium']
${confirmacao}                          xpath=//p[@class='alert alert-success']

##########################################################################################

#CT6: Adicionar/Remover um vestido na lista de desejos
#fazer login
${botao_lista_desejo}                   xpath=//a[@id='wishlist_button']
#clicar no botao de login/usuario
${lista_desejos}                        xpath=//li[@class='lnk_wishlist']
${lista_}                               xpath=//div[@id='block-history']
${botao_sair}                           xpath=//a[@title="Close"]
${cancelar_pedido}                      xpath=//td[@class='wishlist_delete']//a[@class="icon"]             

##########################################################################################

#CT7: Realizar contato com a empresa 
${botao_contatar}                       xpath=//div[@id='contact-link']
${assunto_}                             xpath=//select[@id='id_contact']//option[@value='1']
${ref_pedido}                           xpath=//input[@id='id_order']
${mens_contato}                         xpath=//textarea[@id='message']
${Mandar_}                              xpath=//button[@name='submitMessage']
${enviado}                              xpath=//div[@id='center_column']//p[@class='alert alert-success']

##########################################################################################

#CT8: Tentativa de registro com email já existente
#fazer logout
#clicar em entrar
#preencher area de email
#clicar no botao de cadastro
${error}                                xpath=//div[@id='center_column']//div[@class='alert alert-danger']

##########################################################################################

#CT9: Tentativa de login com senha errada
#clicar em entrar
#preencher email
#clicar no botao de entrar
#existe 1 erro

##########################################################################################

#CT10: Tentativa de login com usuario errado
#clicar em entrar
#preencher com senha                    
#clicar no botao entrar
#existe 1 erro

