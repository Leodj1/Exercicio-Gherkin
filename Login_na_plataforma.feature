            #language: pt

            Funcionalidade: Login na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado eu que estou na página de login da EBAC-SHOP

            Cenário: Login válido
            Quando preencher usuário "Leonardo1234"
            E a senha "12345678"
            Então o sistema deve exibir a mensagem "Usuário válido"

            Cenário: Login com usuário inválido
            Quando preencher usuário "xxxxJoão"
            E a senha "12345678"
            Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando preencher usuário "Leonardo1234"
            E a senha senha "x1x2xx3x4x"
            Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar Login
            Quando digitar um <usuário> e uma <senha>
            Entao o sistema deve exibir a <mensagem>

            Exemplos:
            | usuário        | senha        | mensagem                     |
            | "Leonardo1234" | "12345678"   | "Usuário válido"             |
            | "xxxxJoão"     | "12345678"   | "Usuário ou senha inválidos" |
            | "Leonardo1234" | "x1x2xx3x4x" | "Usuário ou senha inválidos" |
