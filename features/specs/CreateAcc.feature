            #language:pt
            Funcionalidade: Nova Conta

            Como: um futuro usuário
            Quero: verificar o procedimento para criar uma nova conta
            Para: validar a disponibilidade do sistema

            @novo_cadastro
            Cenario: Cadastrando um novo usuário
            Dado o usuário acessar a página de cadastro
            E possuo os seguintes dados
            | Genero        | Masculino          |
            | Primeiro_Nome | Caio               |
            | Segundo_Nome  | Marques            |
            | Email         | caiomarq@brq.com   |
            | Senha         | 123456ABc#         |
            | Dia           | 1                  |
            | Mes           | February           |
            | Ano           | 1993               |
            | CheckB1       | newsletter         |
            | CheckB2       | offers             |
            | PrimeiroNome  | Testador           |
            | SegundoNome   | DesafioBRQ         |
            | Empresa       | BRQ                |
            | Endereço1     | Rua bonita         |
            | Endereço2     | Avenida bonita     |
            | Cidade        | Cidade de Ohio     |
            | Estado        | Ohio               |
            | 5digitos      | 21060              |
            | País          | United States      |
            | Outros        | 123456789          |
            | Telefone      | 10001000           |
            | Celular       | 910002000          |
            | Alias         | analistaqa@brq.com |
Quando realizo o cadastro do usuario
Então visualizo a mensagem de sucesso "Usuário Criado com sucesso"
