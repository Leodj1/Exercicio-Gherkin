            #language: pt

            Funcionalidade: Conclusão de cadastro no EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que estou na página de cadastro do EBAC-SHOP

            Cenário: Cadastrado com dados obrigatórios
            Quando preencher todos os "campos obrigatórios"
            Então o sistema deve exibir a mensagem "finalizar compra"


            Cenário: Campo e-mail com formato inválido
            Quando preencher usuario com e-mail "José_Ernesto@1*3*"
            Então o sistema deve exibir a mensagem "e-mail inválido"


            Cenário: Cadastrar com campos vazios
            Quando deixar um ou mais "campos vazios"
            Então o sistema deve exibir a mensagem "preencher campos vazios"


            Esquema do Cenário: Autenticar opções de cadastro
            Quando preencher o <cadastro>
            Então o sistema deve exibir a <mensagem>
            Exemplos:
            | cadastro              | mensagem                  |
            | "campos obrigatórios" | "finalizar compra"        |
            | "José_Ernesto@1*3*"   | "e-mail inválido"         |
            | "campos vazios"       | "preencher campos vazios" |