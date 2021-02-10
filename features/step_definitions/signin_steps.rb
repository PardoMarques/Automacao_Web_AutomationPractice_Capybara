
Quando('o usuário {string} com a senha {string} efetuar o login') do |userName, password|
    @login.doLogin(userName, password)
end