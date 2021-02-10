#language:pt
Funcionalidade: Logar

Como: um possível comprador
Quero: Validar os fluxos da página principal
Para: Testar a conclusao de uma compra simples

Contexto: Acessar a pagina
Dado o usuário acessar a página

@teste_0
Cenario: Inserir duas roupas no carrinho
Quando clicar em um item cujo o nome seja "Faded Short Sleeve T-shirts"
E voltar para a lista de roupas
E clicar em um item cujo o nome seja "Faded Short Sleeve T-shirts"
Então o numero de itens no carrinho é "2"