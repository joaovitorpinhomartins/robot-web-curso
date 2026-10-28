** Settings **
Library  SeleniumLibrary
Library  BuiltIn

** Variables **
${SITE_URL}  https://automationpratice.com.br/
${SITE_URL_JOAO}  https://www.google.com/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456

** Keywords **
Abrir Site João
    Open Browser  ${SITE_URL_JOAO}  chrome

Acessar Site da qazando
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  5

Abrir esse site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome    

Aguardar site carregar
    Sleep  3s

Clicar sobre o botão login
    Click Element  xpath=//a[@href='/login']
    Esperar Elemento  10

Digitar e-mail
    Input Text  id:user  ${USUARIO_EMAIL}

Digitar senha
    Input Text  id:password  ${USUARIO_SENHA}

Clicar em logar
    Click Element  id:btnLogin

Verificar texto login realizado
    ${texto_atual}  Get Text  id:swal2-title
    Should Be Equal As Strings  ${texto_atual}  Login realizado

Tirar print da tela
    Capture Page Screenshot

Esperar Elemento
    [Arguments]  ${tempo}
    Set Selenium Implicit Wait  ${tempo}s

** Test Cases **
Cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste3
    Acessar Site da qazando
    Clicar sobre o botão login
    Digitar e-mail
    Digitar senha
    Clicar em logar
    Verificar texto login realizado