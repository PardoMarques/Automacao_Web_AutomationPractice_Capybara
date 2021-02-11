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

Dado('realizar a compra de dois itens que custam {string} e {string}') do |item1, item2|
   @item1 = item1
   @item2 = item2

    steps %{
    Dado o usuário acessar a página
    Quando clicar em um item cujo o preço seja "#{item1}"
    E voltar para a lista de roupas
    E clicar em um item cujo o preço seja "#{item2}"
   }
end
  
Quando('entrarmos na pagina do carrinho') do
    @base.cartOptions("Check out")
    sleep(5)
end

Quando('prosseguir checkout') do
    @checkout.clickProcessCheckout
end

Quando('prosseguir endereço') do
    @checkout.clickProcessAddress
end

Quando('aceitar os termos de autentificação e prosseguir envio') do
    @checkout.clickProcessShipping
end

Quando('prosseguir pagamento') do
    @checkout.clickBankWire
end

Quando('finalizar a ordem') do
    @checkout.clickFinalButton
end

Então('estara na pagina onde ira decidir a forma de pagamento') do
    expect(page).to have_content 'PLEASE CHOOSE YOUR PAYMENT METHOD'
end

Então('estara na pagina final do processo') do
    expect(page).to have_content 'BANK-WIRE PAYMENT.'
end

Então('a mensagem de conclusão do processo irá aparecer') do
    expect(page).to have_content 'Your order on My Store is complete.'
end
  
Então('validamos se o valor final da compra esta correto') do
    @item1 = @item1.gsub('$','').to_f
    @item2 = @item2.gsub('$','').to_f

    somaString = (@item1 + @item2 + 2).round(2)
    somaString = somaString.to_s
    somaString = "$"+somaString

    expect(somaString).to have_content @checkout.returnSumPrice
end

Então('validamos se os dados do endereço estão corretos') do
    hashTemp = @checkout.expectAddress(@dados)

    expect(hashTemp['adressName']).to have_content @checkout.text_AdressName.text
    expect(hashTemp['adressName']).to have_content @checkout.text_AdressName.text 
    expect(hashTemp['adressComp']).to have_content @checkout.text_AdressComp.text 
    expect(hashTemp['adressA1']).to have_content @checkout.text_AdressA1.text 
    #expect(hashTemp['adressCity']).to have_content @checkout.text_AdressCity.text 
    expect(hashTemp['adressCountry']).to have_content @checkout.text_AdressCountry.text 
    expect(hashTemp['adressTel']).to have_content @checkout.text_AdressTel.text 
    expect(hashTemp['adressCel']).to have_content @checkout.text_AdressCel.text 
end


Então('será retornado a mensagem de sucesso da conclusão da compra') do
    pending # Write code here that turns the phrase above into concrete actions
end