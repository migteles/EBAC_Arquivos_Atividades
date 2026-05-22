#language: pt
Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer a autenticação na plataforma
Para visualizar meus pedidos

  Contexto:
    Dado que eu acesse a página de autenticação da loja EBAC-SHOP

  Cenário: Autenticação válida
    Quando eu digitar o usuário "joao@ebac.com.br"
    E a senha "senha@123"
    Então deve direcionar o cliente para a tela de checkout

  Cenário: Usuário inexistente
    Quando eu digitar o usuário "eugostodetorta@ebac.com.br"
    E a senha "senha@123"
    Então deve exibir uma mensagem de alerta "Usuário inexistente"

  Cenário: Usuário com senha inválida
    Quando eu digitar o usuário "joao@ebac.com.br"
    E a senha "eugostodetorta"
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
