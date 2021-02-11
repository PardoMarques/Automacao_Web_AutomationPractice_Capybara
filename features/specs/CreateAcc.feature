            #language:pt
            Funcionalidade: Nova Conta

            Como: um futuro usuário
            Quero: verificar o procedimento para criar uma nova conta
            Para: validar a disponibilidade do sistema

            @createacc
            Cenario: Cadastrando um novo usuário
            Dado o usuário acessar a página de cadastro
            E possuo os seguintes dados
            | Primeiro_Nome | Caio               |
            | Segundo_Nome  | Marques            |
            #| Email         | caiomarq@brq.com   | -> troquei por um gerador, para que o teste possa ser concluído sempre
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
Então estará contido o seguinte texto "MY ACCOUNT" na página
E estará contido o seguinte texto "Welcome to your account. Here you can manage all of your personal information and orders." na página

