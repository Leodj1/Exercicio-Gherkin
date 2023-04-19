            #language pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de detalhes do produto

            Cenário: Seleções obrigatórias
            Quando seleccioinar "cor", "tamanho" e "quantidade"
            E clicar no botão "inserir no carrinho"
            Entao o sistema deve exibir a mensagem "Finalizar compra"

            Cenário: Deve permitir apenas 10 produtos
            Quando seleccionar mais do "limite de 10 produtos"
            E clicar no botão "adicionar"
            Entao o sistema deve exibir a mensagem "Pasou do limite"


            Cenário: Clicou botão limpar retornou atrás
            Quando seleccionar produtos "não desejados"
            E clicar no botão "limpar"
            Entao o sistema deve exibir a mensagem "Retorna ao estado original"


            Esquema do Cenário: Configurar produto
            Dado que ao selecionar <produto>
            E clicar <botão.
            Entao o sistema deve exibir a <mensagem>
            Exemplos:
            | produto                     | botão                 | mensagem                     |
            | "cor, tamanho e quantidade" | "inserir no carrinho" | "Finalizar compra"           |
            | "limite de 10 produtos"     | "adicionar"           | "Pasou do limite"            |
            | "não desejados"             | "limpar"              | "Retorna ao estado original" |