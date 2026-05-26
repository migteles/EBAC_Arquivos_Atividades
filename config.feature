#language: pt
Funcionalidade: Configurar Produto
# Como cliente da EBAC-SHOP
# Quero configurar meu produto de acordo com meu tamanho e gosto
# E escolher a quantidade
# Para depois inserir no carrinho

    Contexto: 
     Dado que eu acesse a página de um produto da loja EBAC-SHOP

    Cenário: Configurar o produto
     Quando eu escolher o tamanho, a cor e a quantidade do produto estar dentro do limite de até 10 unidades
     E clicar na opção Comprar
     Então deve exibir uma mensagem de confirmação "Produto adicionado ao carrinho com sucesso"
    
    Cenário: Não configurar o produto
     Quando eu não escolher o tamanho, a cor ou a quantidade do produto
     E clicar na opção Comprar
     Então deve exibir uma mensagem de alerta "Selecione as configurações do produto para continuar"

    Cenário: Quantidade maior que o limite
     Quando eu clicar na opção Comprar
     E a quantidade de produtos ser maior que 10 unidades
     Então deve exibir uma mensagem de alerta "A quantidade permitida são apenas 10 unidades por venda"

    Cenário: Limpar as configurações feitas
     Quando eu terminar de configurar um produto
     E clicar no botão Limpar
     Então todas as configurações selecionadas devem ser removidas
