*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome

*** Keywords ***
Abrir navegador
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/login    ${BROWSER}
    Maximize Browser Window

Fazer Login
    Input Text    //input[@name="username"]    exalumno@ufba.br
    Input Text    //input[@name="password"]    ***
    Click Element    //button

Navegação entre paginas
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/home    ${BROWSER}
    Maximize Browser Window
    Click Element    //li[@class="profilepage"]
    Click Element    //li[@class="inicialpage"]
    Click Element    //li[@class="dashboard"]
    Click Element    //li[@class="forum"]
    Click Element    //li[@class="eventos"]
    Click Element    //li[@class="bug"]
    Click Element    //li[@class="profile"]

Criar topico
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/forum    ${BROWSER}
    Maximize Browser Window
    Click Element    //li[@class="forum"]
    Click Element    //button[@id="btCriarTopico"]
    Input Text    //input[@name="nomeTopico"]    Novo topico de teste
    Select From List By Value    //select[@name="categoriaTopico"]    Disciplinas
    Input Text    //textarea[@name="textoTopico"]    Obrigado
    Click Element    //button[@class="criar-topico"]

Criar evento
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/eventos    ${BROWSER}
    Maximize Browser Window
    Click Element    //li[@class="eventos"]
    Input Text    //input[@name="nomeEvento"]    Encontro ex alumnos
    Input Text    //input[@name="dataEvento"]    0002-05-08
    Input Text    //input[@name="dataEvento"]    0020-05-08
    Input Text    //input[@name="dataEvento"]    0202-05-08
    Input Text    //input[@name="dataEvento"]    2023-05-08
    Click Element    //input[@name="horaEvento"]
    Input Text    //input[@name="localEvento"]    Ufba ondina
    Input Text    //textarea[@name="descricaoEvento"]    Palestra e festa

Reportar bug
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/reportar    ${BROWSER}
    Maximize Browser Window
    Click Element    //li[@class="bug"]
    Input Text    //textarea    Botão de b
    Input Text    //textarea    Botão de azul
    Input Text    xpath=(//textarea)[2]    Tela de bug
    Select From List By Value    //select    UI
    Select From List By Value    xpath=(//select)[2]    Média
    Click Element    //button[@class="btn"]

Cadastro
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/    ${BROWSER}
    Maximize Browser Window
    Click Link    //a[@href="/cadastro"]
    Input Text    //input[@name="nome"]    Exlumno
    Input Text    //input[@name="sobrenome"]    ufbaa
    Input Text    //input[@name="cpf"]    00000000000
    Select From List By Value    //select[@name="curso"]    curso2
    Input Text    //input[@name="email"]    exlumno@ufba.br
    Input Text    //input[@name="senha"]    ***
    Input Text    //input[@name="confirmaSenha"]    ***
    Click Element    //button[@id="Cadastrar"]
    Click Element    //button

Recuperar senha
    Open Browser    https://master--tiny-mermaid-6f7a1f.netlify.app/login    ${BROWSER}
    Maximize Browser Window
    Click Link    //a[@href="/redefinirsenhaemail"]
    Input Text    //input    exalumno@ufba.br
    Click Element    //button
    Click Element    //button
    Input Text    //input    ***
    Input Text    xpath=(//input)[2]    ***
    Click Element    //button