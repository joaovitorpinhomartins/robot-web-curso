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

Abrir esse site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome    

Aguardar site carregar
    Sleep  5s

Clicar sobre o botão login
    Click Element  xpath=//a[@href='/login']

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

** Test Cases **
Cenário 1: Acessando o site da QAZANDO
    [Tags]  Teste1
    Acessar Site da qazando
    Aguardar site carregar
    Clicar sobre o botão login
    Aguardar site carregar
    Digitar e-mail
    Tirar print da tela
    Digitar senha
    Clicar em logar
    Tirar print da tela
    Verificar texto login realizado