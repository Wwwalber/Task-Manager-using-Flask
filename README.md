# Task Manager - Flask Application

Um sistema de gerenciamento de tarefas pessoais desenvolvido com Flask, Sqlite e Docker.

## Requisitos

- Docker
- Docker Compose
- Git

## Configuração do Ambiente

1. Clone o repositório:
```bash
git clone <https://github.com/AdityaBagad/Task-Manager-using-Flask>
cd Task-Manager-using-Flask
```

2. Configuração das Variáveis de Ambiente:
   - Copie o arquivo de exemplo para criar seu arquivo de configuração:
   ```bash
   cp .env.example .env
   ```
   
   - O arquivo `.env` contém configurações importantes:
     - **FLASK_APP**: Define o ponto de entrada da aplicação
     - **FLASK_ENV**: Define o ambiente (development/production)
     - **FLASK_DEBUG**: Ativa/desativa o modo debug
     - **SECRET_KEY**: Chave para segurança da aplicação
     - **DATABASE_TYPE**: Tipo do banco de dados (sqlite)
     - **DATABASE_PATH**: Caminho do arquivo do banco de dados

   - Para gerar uma SECRET_KEY segura, use:
   ```bash
   python -c "import secrets; print(secrets.token_hex(32))"
   ```

3. Inicie os containers:
```bash
docker compose up --build
```

A aplicação estará disponível em http://localhost:5001

## Estrutura do Projeto

```
Task-Manager-using-Flask/
├── todo_project/           # Aplicação Flask
│   ├── static/            # Arquivos estáticos
│   ├── templates/         # Templates HTML
│   ├── __init__.py       # Inicialização da aplicação
│   ├── models.py         # Modelos do banco de dados
│   ├── routes.py         # Rotas da aplicação
│   └── forms.py          # Formulários
├── tests/                # Testes
├── .env                  # Variáveis de ambiente
├── .gitlab-ci.yml        # Configuração CI/CD
├── docker-compose.yml    # Configuração Docker Compose
├── Dockerfile           # Configuração Docker
└── requirements.txt     # Dependências Python
```

## Funcionalidades

- Autenticação de usuários
- Criação, edição e exclusão de tarefas
- Visualização de todas as tarefas
- Gerenciamento de conta do usuário
- Interface responsiva

## Desenvolvimento

Para desenvolvimento local:

1. Crie um ambiente virtual:
```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows
```

2. Instale as dependências:
```bash
pip install -r requirements.txt
```

3. Configure o banco de dados:
```bash
flask db init
flask db migrate
flask db upgrade
```

4. Execute a aplicação:
```bash
flask run
```

## Testes

Para executar os testes:

```bash
pytest
```

Para cobertura de código:

```bash
pytest --cov=./ --cov-report=html
```

## CI/CD

O projeto utiliza GitLab CI/CD com as seguintes etapas:

1. Lint: Verifica a formatação do código
2. Test: Executa os testes
3. Build: Constrói a imagem Docker
4. Deploy: Implanta a aplicação

## Segurança

- Autenticação obrigatória
- Senhas criptografadas
- Proteção contra CSRF
- Logging de atividades
- Validação de entrada de dados

## Contribuição

1. Fork o projeto
2. Crie uma branch para sua feature
3. Commit suas mudanças
4. Push para a branch
5. Abra um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo LICENSE para detalhes.

# Features

- User Authentication
- Easy to use and deploy locally.

# Requirements

Execute the following command to install the required third party libraries:

```pip3 install -r requirements.txt```

# Usage

1. Clone the repository using the following command
    
    ```git clone https://github.com/AdityaBagad/Task-Manager-using-Flask.git```

2. Install the dependencies using

    ```cd  Task-Manager-using-Flask```
    
    ```pip3 install -r requirements.txt```

3. Run this command to start the application

    ```cd todo_project```

    ```python run.py```

# Results

## Registration Page
Login or Register if you dont have an account

![Registration Page](output/register.jpg)

## Accessing URL's 
User cannot access any URL's if they are not logged in

![Invalid Access](output/invalid-access.jpg)

## After Successfull Login
See all your tasks after successfull login.

![After Login](output/after-login.jpg)

## Add Tasks
Click the **Add Task** link in the side-bar to add tasks

![Image of Yaktocat](output/add-task.jpg)

## View All Tasks
Click the **View All Task** link in the side-bar to see all tasks. You can **Update** and **Delete** Tasks from this page.

![Image of Yaktocat](output/all-tasks.jpg)

## Account Settings
Change your username and password. You can access this by clicking dropdown in the Navbar

![Image of Yaktocat](output/account-settings.jpg)

