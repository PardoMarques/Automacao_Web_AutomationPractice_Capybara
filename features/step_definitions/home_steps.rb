require 'pry'

Dado('o usuário acessar a página') do
  @home.go
end

Quando('clicar em um item cujo o nome seja {string}') do |nome|
  @home.addToCartByName(nome)
end   

Quando('clicar em um item cujo o preço seja {string}') do |preco|
  @home.addToCartByPrice(preco)
end

Quando('voltar para a lista de roupas') do
  @home.backToShop
end   
  
Então('o ultimo item que foi adicionado ao carrinho foi o {string}') do |primeiroItem|
  binding.pry
  # VERIFICAR NA LISTA
  # expect(@home.box_dialogCard).to have_content primeiroItem
end

Então('o numero de itens no carrinho é {string}') do |numero|
  expect(@home.text_qntItens.text).to have_content numero
end


Então('a cor da roupa é {string}') do |cor|
  expect(@home.text_colorItem.text).to have_content cor
end


Quando('o usuário {string} com a senha {string} efetuar o login') do |userName, password|
  @login.doLogin(userName, password)
end