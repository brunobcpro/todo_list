# To-Do List Application - V360 - ChegaMais

Este projeto foi desenvolvido como parte do processo seletivo para a vaga de **Pessoa Desenvolvedora** no grupo **Visagio**. O objetivo é criar uma aplicação de lista de tarefas (To-Do List) utilizando **Ruby on Rails**, com funcionalidades de criação de listas, adição de itens, e gerenciamento de status dos itens. Além disso, a aplicação foi desenvolvida com o objetivo de ser funcional tanto no **front-end** quanto no **back-end** para demonstrar conhecimento em Ruby on Rails e bancos de dados.

## Funcionalidades

- **Criação de listas de tarefas (To-Do List)**: O usuário pode criar múltiplas listas de tarefas.
- **Adição de itens às listas**: Cada lista pode conter vários itens de tarefas.
- **Gerenciamento de status de tarefas**: Cada item pode ter seu status alterado (exemplo: "Pendente", "Em andamento", "Concluído").
- **Exclusão de itens**: O usuário pode remover itens das listas.
- **Formulário de adição de itens com status padrão**: Ao adicionar um novo item, o status é automaticamente definido como "Pendente".

## Tecnologias Utilizadas

### **Back-End**
- **Ruby on Rails**: Framework utilizado para desenvolver a aplicação. Versão 6.x.
- **Banco de Dados**: PostgreSQL foi utilizado como sistema de gerenciamento de banco de dados.
- **ActiveRecord**: Utilizado para interação com o banco de dados e mapeamento objeto-relacional.

### **Front-End**
- **HTML/CSS**: Para a construção das páginas de visualização e interação com o usuário.
- **JavaScript**: Para interações dinâmicas, como a atualização de status de itens.
- **Bootstrap**: Utilizado para a criação de uma interface simples e responsiva.

### **Versionamento**
- **Git**: Sistema de controle de versão utilizado para gerenciar o código-fonte.
- **GitHub**: Repositório remoto para hospedagem do código-fonte.

## Instruções para Rodar o Projeto

### Pré-requisitos
- **Ruby 3.x**: Requerido para rodar o Ruby on Rails.
- **Rails 6.x**: Framework utilizado para o desenvolvimento.
- **PostgreSQL**: Banco de dados utilizado no projeto.

### Passos para Instalar

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/seu-usuario/todo_list.git
   cd todo_list
2. **Instalar as dependências do Ruby:**

Certifique-se de ter o Ruby e o Rails instalados em sua máquina. Caso não tenha, você pode utilizar o RVM ou rbenv para gerenciar versões do Ruby.

Após isso, instale as dependências do Ruby:

bundle install

3. **Configurar o banco de dados:**
Crie o banco de dados e execute as migrações para garantir que todas as tabelas necessárias sejam criadas corretamente:

rails db:create
rails db:migrate

4. **Rodando o servidor local:**
Para iniciar o servidor de desenvolvimento localmente, utilize o comando abaixo:

rails server

Após rodar o servidor, a aplicação ficará disponível em http://localhost:3000.

**Agradecimentos**
Agradecemos por revisar este projeto! Este desafio foi desenvolvido para avaliar as habilidades no desenvolvimento com Ruby on Rails, bem como o entendimento sobre conceitos de banco de dados e front-end. Se você tiver dúvidas ou sugestões, sinta-se à vontade para entrar em contato.

Grupo Visagio - Projeto desenvolvido como parte do processo seletivo para a vaga de Pessoa Desenvolvedora.

