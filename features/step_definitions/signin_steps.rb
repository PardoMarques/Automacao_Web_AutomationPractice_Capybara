Dado('o usuário acessar a página de cadastro') do
    @signIn.go
    @signIn.createNewAcc('qwertyuiop@asdfg.com')
    sleep(3)
end