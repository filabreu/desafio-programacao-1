# Desafio de programação 1

Desafio realizado por Filipe Abreu, para processo seletivo na Tax Web.

# Requisitos

Ruby 2.0 ou superior

Rubygems

SQLite 3.0 ou superior


# Instalação

Tendo instalado os requisitos acima, instalar as gems necessárias.

Para realizar isso, na raiz da aplicação rodar o comando

    bundle install

Após a instalação de todas as gems concluir com sucesso, criar o banco de dados com o comando:

    bundle exec rake db:create

Com o banco de dados SQLite criado, rodar as migrações para criar as tabelas no banco, com o comando:

    bundle exec rake db:migrate

Após o banco de dados e as tabelas estarem criadas, já podemos rodar a aplicação, com o comando:

    rails s

Acesse a aplicação em seu navegador web de preferência no endereço:

[http://localhost:3000/](http://localhost:3000/)

# Primeira ação

Realize um cadastro na aplicação clicando no botão __Registre-me__

Complete o formulário com um endereço de e-mail válido (este será o seu login na aplicação) e uma senha,
repetindo esta senha no campo de confirmação de senha.

Clique no botão __Registre-me__ para concluir o registro.

Você será redirecionado para a página de Registro de Vendas

# Registrando vendas

Na página de Registro de Vendas, clique no botão para selecionar um arquivo.

Escolha o arquivo __example_input.tab__ localizado na raiz da pasta da aplicação,
ou algum outro arquivo TSV com o mesmo formato que o __example_input.tab__.

Clique no botão __Registrar vendas__ para concluir o registro de vendas com este arquivo.

Você será redirecionado para a página com o resumo do registro de vendas realizado.

Clique no botão __Ver todas as suas vendas registradas__ para ver outras vendas já registradas.

Clique no botão __Registrar vendas__ para registrar mais vendas através de arquivos TSV.

- - -

# Desafio de programação 1
A idéia deste desafio é nos permitir avaliar melhor as habilidades de candidatos à vagas de programador, de vários níveis.

Este desafio deve ser feito por você em sua casa. Gaste o tempo que você quiser, porém normalmente você não deve precisar de mais do que algumas horas.

## Instruções de entrega do desafio
1. Primeiro, faça um fork deste projeto para sua conta no Github (crie uma se você não possuir).
1. Em seguida, implemente o projeto tal qual descrito abaixo, em seu próprio fork.
1. Por fim, empurre todas as suas alterações para o seu fork no Github e envie um pull request para este repositório original. Se você já entrou em contato com alguém da Myfreecomm sobre uma vaga, avise também essa pessoa por email, incluindo no email o seu usuário no Github.

## Instruções alternativas de entrega do desafio (caso você não queira que sua submissão seja pública)
1. Faça um clone deste repositório.
1. Em seguida, implemente o projeto tal qual descrito abaixo, em seu clone local.
1. Por fim, envie via email um arquivo patch para seu contato na Myfreecomm.

## Descrição do projeto
Você recebeu um arquivo de texto com os dados de vendas da empresa. Precisamos criar uma maneira para que estes dados sejam importados para um banco de dados.

Sua tarefa é criar uma interface web que aceite upload de arquivos, normalize os dados e armazene-os em um banco de dados relacional.

Sua aplicação web DEVE:

1. Aceitar (via um formulário) o upload de arquivos separados por TAB com as seguintes colunas: purchaser name, item description, item price, purchase count, merchant address, merchant name. Você pode assumir que as colunas estarão sempre nesta ordem, que sempre haverá dados em cada coluna, e que sempre haverá uma linha de cabeçalho. Um arquivo de exemplo chamado example_input.tab está incluído neste repositório.
1. Interpretar ("parsear") o arquivo recebido, normalizar os dados, e salvar corretamente a informação em um banco de dados relacional.
1. Exibir a receita bruta total representada pelo arquivo enviado após o upload + parser.
1. Ser escrita obrigatoriamente em Ruby 1.9+ ou Python 2.6+ (caso esteja entrevistando para uma vaga específica, utilize a linguagem solicitada pela vaga).
1. Ser simples de configurar e rodar, funcionando em ambiente compatível com Unix (Linux ou Mac OS X). Ela deve utilizar apenas linguagens e bibliotecas livres ou gratuitas.

Sua aplicação web não precisa:

1. Lidar com autenticação ou autorização (pontos extras se ela fizer, mais pontos extras se a autenticação for feita via OAuth).
1. Ser escrita usando algum framework específico (mas não há nada errado em usá-los também, use o que achar melhor).
1. Ter uma aparência bonita.

## Avaliação
Seu projeto será avaliado de acordo com os seguintes critérios. 

1. Sua aplicação preenche os requerimentos básicos?
1. Você documentou a maneira de configurar o ambiente e rodar sua aplicação?
1. Você seguiu as instruções de envio do desafio?

Adicionalmente, tentaremos verificar a sua familiarização com as bibliotecas padrões (standard libs), bem como sua experiência com programação orientada a objetos a partir da estrutura de seu projeto.

### Referência

Este desafio foi baseado neste outro desafio: https://github.com/lschallenges/data-engineering
