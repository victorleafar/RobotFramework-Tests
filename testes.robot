*** Settings ***
Documentation       Esta suite testa o site "Ex-Alunos Já Formei".

Resource            recursos.robot

*** Test Cases ***
Abrir o Navegador
    [Documentation]    Caso de teste 01 - Abrir o navegador
    Abrir Navegador

Fazer Login
    [Documentation]    Caso de teste 02 - Fazer login
    Abrir Navegador
    Fazer Login

Navegação no Menu Lateral
    [Documentation]    Caso de teste 03 - Navegação em menu lateral
    Abrir Navegador
    Navegação entre paginas

Criar Tópico
    [Documentation]    Caso de teste 04 - Criar tópico
    Abrir Navegador
    Criar topico

Criar Evento
    [Documentation]    Caso de teste 05 - Criar evento
    Abrir Navegador
    Criar Evento

Reportar Bug
    [Documentation]    Caso de teste 06 - Reportar bug
    Abrir Navegador
    Reportar Bug

Cadastro
    [Documentation]    Caso de teste 07 - Cadastro
    Abrir Navegador
    Cadastro

Recuperar Senha
    [Documentation]    Caso de teste 08 - Recuperar senha
    Abrir Navegador
    Recuperar Senha





    