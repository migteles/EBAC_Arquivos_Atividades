#language: pt
Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

    Contexto:
     Dado que eu acesse a pagina de checkout na EBAC-SHOP
    
    Cenário: Checkout não confirmado
     Quando eu clicar na opção Finalizar Compra
     E algum campo marcado com asteristico não esteja preenchido
     Então deve exibir a mensagem de alerta "Por favor, preencha todos os campos obrigatórios"
    
    Cenário: Email inválido
     Quando eu clicar na opção Finalizar Compra
     E o <email> esteja em um formato inválido
     Então deve aparecer a mensagem de alerta "Por favor, insira um endereço de e-mail válido"

     Exemplos:
     | email        |
     | @gmail.com   |
     | @hotmail.com |
     | @yahoo.com   |
     | @icloud.com  |
     | @outlook.com |

    Cenário: Confirmar Checkout
     Quando eu clicar na opção Finalizar Compra
     E todos os <campos> marcados com asteristicos estejam preenchidos
     Então deve ser finalizado o cadastro e a compra seja confirmada 
    
     Exemplos:
     | campos             |
     | nome               |
     | sobrenome          |
     | país               |
     | endereço           |
     | cidade             |
     | cep                |
     | telefone           |
     | endereço de e-mail |