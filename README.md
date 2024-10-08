# Sistema de Gerenciamento de Biblioteca

Este projeto acadêmico foi desenvolvido como parte do curso de Engenharia de Software. O objetivo é criar um sistema de gerenciamento de biblioteca utilizando um banco de dados relacional para armazenar e gerenciar informações sobre livros, autores, membros da biblioteca, empréstimos e categorias de livros.

## Descrição do Projeto

O projeto envolve a modelagem de um banco de dados que suporte as operações básicas de uma biblioteca, como o registro de livros, controle de autores, gestão de membros, monitoramento de empréstimos e categorização de livros.

### Entidades e Atributos:

- **Livro**: ISBN, Título, Ano de Publicação
- **Autor**: Nome, Nacionalidade
- **Membro**: Nome, E-mail, Endereço (CEP, Rua, Número e Complemento), Telefones (Número e Tipo)
- **Empréstimo**: Data de Empréstimo, Data de Devolução
- **Categoria**: Nome, Descrição
- **Editora**: Nome, Cidade, CNPJ

### Relacionamentos:

- Um livro pode ter vários autores, e um autor pode escrever vários livros.
- Um livro pode ser publicado por apenas uma editora, mas uma editora pode publicar vários livros.
- Um livro pertence a uma categoria, e uma categoria pode incluir vários livros.
- Um membro pode pegar emprestado vários livros, mas cada empréstimo é relacionado a apenas um membro.
- Um empréstimo envolve um livro específico.

**Considerações**: Todas as entidades possuem um atributo identificador único para garantir a integridade dos dados.

## Ferramentas e Tecnologias Utilizadas
- **DER**: O projeto utiliza a notação de Peter Chen para a criação do diagrama entidade relacionamento.
- **MySQL**: O projeto utiliza o banco de dados relacional MySQL para a implementação do esquema físico e manipulação de dados.
- **SQL**: O esquema de tabelas e consultas será desenvolvido em SQL, seguindo o modelo lógico definido a partir do Diagrama Entidade-Relacionamento (DER) e do Modelo Entidade-Relacionamento (MER).

## Objetivo Acadêmico

Este projeto tem como finalidade aplicar conceitos de modelagem de banco de dados, relacionamento entre entidades, normalização e desenvolvimento de sistemas relacionais. Ele será utilizado para aprofundar o conhecimento em SQL e bancos de dados relacionais, contribuindo para a formação na área de Engenharia de Software.
