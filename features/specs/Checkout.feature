#language:pt
@checkout
Funcionalidade: Finalizando a compra

Como: um usuário que ira finalizar a comprar de um item
Quero: validar todo o fluxo da compra
Para: testar a conclusao de uma compra simples

Cenario: Fluxo de Compra Completo
Dado realizar os procedimentos de cadastro
E realizar a compra de dois itens que custam "$16.51" e "$27.00"
Quando entrarmos na pagina do carrinho pela janela do item
Então validamos se o valor final da compra esta correto
E validamos se os dados do endereço estão corretos
E aceitar os termos de autentificação
E finalizar a compra com um cartão
Então será retornado a mensagem de sucesso da conclusão da compra