            #language:pt
            Funcionalidade: Homepage

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

            @teste_1
            Esquema do Cenario: Inserir o item no carrinho pelo nome
            Quando clicar em um item cujo o nome seja <nome>
            Então a cor da roupa é <cor>
            Quando voltar para a lista de roupas
            E estender a listagem de itens do carrinho
            Então o ultimo item que foi adicionado ao carrinho foi o <primeiroItem>

            Exemplos:
            | nome                          | primeiroItem                  | cor         |
            | "Faded Short Sleeve T-shirts" | "Faded Short Sleeve T-shirts" | "Orange, S" |
            | "Blouse"                      | "Blouse"                      | "Black, S"  |

            @teste_2
            Esquema do Cenario: Inserir o item no carrinho pelo preço
            Quando clicar em um item cujo o preço seja <preco>
            Então a cor da roupa é <cor>
            Quando voltar para a lista de roupas
            E estender a listagem de itens do carrinho
            Então o ultimo item que foi adicionado ao carrinho foi o <primeiroItem>
            Exemplos:
            | preco    | primeiroItem            | cor         |
            | "$50.99" | "Printed Dress"         | "Beige, S"  |
            | "$28.98" | "Printed Summer Dress"  | "Yellow, S" |
            | "$30.50" | "Printed Summer Dress"  | "Yellow, S" |
            | "$16.40" | "Printed Chiffon Dress" | "Yellow, S" |
