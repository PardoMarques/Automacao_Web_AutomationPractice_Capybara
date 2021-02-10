#language: pt
#language:pt
Funcionalidade: Finalizando a compra

Como: um possível comprador
Quero: Validar os fluxos da página principal
Para: Testar a conclusao de uma compra simples

Contexto: Acessar a pagina
Dado o usuário acessar a página

@teste_0
Cenario: Inserir duas roupas no carrinho
Quando clicar em um item cujo o nome seja "Faded Short Sleeve T-shirts"
E seguir para a página de Checkout
Então o numero de itens no carrinho é "2"