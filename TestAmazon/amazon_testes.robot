*** Settings ***
Documentation       Essa suite testa o site da Amazon.com.br obrigado
Resource            amazon_resources.robot

Test Setup          Abrir o navegador
Test Teardown       Fechar navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Livros"
    [Documentation]    Esse teste verifica o site da Amazon.com.br e Livros
    [Tags]    menu livros
    Acessar a home page do site Amazon.com.br
    Entrar no menu livros

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]    Esse teste verifica a existência de um produto
    [Tags]    pesquisa_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto no campo de pesquisa "drones"
    Clicar no botão de pesquisa

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto no campo de pesquisa "${produto_pesquisar}"    
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "${produto_pesquisar}"
    Adicionar o produto "${produto_escolhido}" no carrinho
    Verificar se o produto "${produto_pesquisar}" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto no campo de pesquisa "${produto_pesquisar}"
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "${produto_pesquisar}"
    Adicionar o produto "${produto_escolhido}" no carrinho
    Verificar se o produto "${produto_escolhido}" foi adicionado com sucesso
    Remover o produto "${produto_escolhido}" do carrinho
    
