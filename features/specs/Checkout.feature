#language:pt
@checkout
Funcionalidade: Finalizando a compra

Como: um usuário que ira finalizar a comprar de um item
Quero: validar todo o fluxo da compra
Para: testar a conclusao de uma compra simples

Cenario: Fluxo de Compra Completo
Dado realizar a compra de dois itens
E realizar os procedimentos de cadastro
Quando aceitar os termos de autentificação
E finalizar a compra com um cartão
Então será retornado a mensagem de sucesso da conclusão da compra