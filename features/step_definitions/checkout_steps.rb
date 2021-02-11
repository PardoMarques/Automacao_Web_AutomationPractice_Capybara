Dado('realizar os procedimentos de cadastro') do
    steps %{
        Dado o usuário acessar a página de cadastro
            E possuo os seguintes dados
            | Primeiro_Nome | Caio               |
            | Segundo_Nome  | Marques            |
            | Senha         | 123456ABc#         |
            | PrimeiroNome  | Testador           |
            | SegundoNome   | DesafioBRQ         |
            | Empresa       | BRQ                |
            | Endereço1     | Rua bonita         |
            | Endereço2     | Avenida bonita     |
            | Cidade        | Cidade de Ohio     |
            | CEP 5digitos  | 21060              |
            | Outros        | 123456789          |
            | Telefone      | 10001000           |
            | Celular       | 910002000          |
            | Alias         | analistaqa@brq.com |
            Quando preencho os campos de texto
            E seleciono o genero "homem"
            E seleciono o checklist "sim" e "sim"
            E para a data de nascimento preencho com "1" de "4" de "1984"
            E para a estado e país respectivamente, seleciono "7" "21"
            Quando concluo o cadastro do usuario
    }
end

Dado('realizar a compra de dois itens') do
   steps %{
    Dado o usuário acessar a página
    Quando clicar em um item cujo o nome seja "Faded Short Sleeve T-shirts"
    E voltar para a lista de roupas
    E clicar em um item cujo o nome seja "Blouse"
   }
end
  
Quando('entrarmos na pagina do carrinho') do
    @base.cartOptions("Check out")
end
    



Quando('aceitar os termos de autentificação') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('finalizar a compra com um cartão') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('será retornado a mensagem de sucesso da conclusão da compra') do
    pending # Write code here that turns the phrase above into concrete actions
end