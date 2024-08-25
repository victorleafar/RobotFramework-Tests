*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}                                  http://www.amazon.com.br
${menu_livros}                          //*[@id="nav-xshop"]/a[8]
${elemento_Loja_livros}                 /html/head/title
${elemento_campo_pesquisa}              //input[contains(@type,'text')]
${botao_pesquisar}                      //input[contains(@type,'submit')]
${quantidade_elemento}                  0
${produto_pesquisar}                    Xbox Series S
${produto_escolhido}                    //*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[2]/div/div/div/div/div[2]/div[1]/h2/a/span
${adicionar_no_carrinho}                //*[@id="add-to-cart-button"]
*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go to    url=${url}
    Wait Until Element Is Visible    locator=${menu_livros}

Entrar no menu livros
    Click Element    locator=${menu_livros}


Digitar o nome de produto no campo de pesquisa "${produto_pesquisar}"
    Input Text    locator=${elemento_campo_pesquisa}    text=${produto_pesquisar}

Clicar no botão de pesquisa
    Click Button    locator=${botao_pesquisar}

Verificar o resultado da pesquisa se está listando o produto "${produto_pesquisar}"
    Wait Until Element Is Visible    locator=//*[@id="search"]/span/div/h1/div/div[1]/div/div/span[1]    

Adicionar o produto "${produto_escolhido}" no carrinho
    Sleep    5
    Click Element    ${produto_escolhido}
    Sleep    5
    Click Button    ${adicionar_no_carrinho}
    
Verificar se o produto "${produto_pesquisar}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//*[@id="NATC_SMART_WAGON_CONF_MSG_SUCCESS"]/span

Remover o produto "${seletor_produto_carrinho}" do carrinho
    Sleep    5
    Click Element    locator=//*[@id="sw-gtc"]/span/a
    Sleep    5
    Wait Until Element Is Visible    locator=//*[@id="a-autoid-2"]/span/input