#language:pt
@signin
Funcionalidade: Logar

Como: um novo usuário
Quero: validar a página de login
Para: possibilitar a continuação dos demais testes

#@signin_login

@signin_newacc
Cenario: Validar o fluxo da pagina de cadastro
Dado o usuário acessar a página de cadastro
Então estará contido o seguinte texto "CREATE AN ACCOUNT" na página