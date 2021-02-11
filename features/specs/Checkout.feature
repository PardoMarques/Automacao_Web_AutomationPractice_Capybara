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
Quando prosseguir checkout
E prosseguir endereço
E aceitar os termos de autentificação e prosseguir envio
Então estara na pagina onde ira decidir a forma de pagamento
Quando prosseguir pagamento
Então estara na pagina final do processo
Quando finalizar a ordem
Então a mensagem de conclusão do processo irá aparecer