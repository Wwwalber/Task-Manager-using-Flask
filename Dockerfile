# Use uma imagem base Python
FROM python:3.9-slim-buster

# Defina variáveis de ambiente
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crie e defina o diretório de trabalho
WORKDIR /app

# Instale as dependências do sistema
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Copie os arquivos de requisitos
COPY requirements.txt .

# Instale as dependências Python
RUN pip install --no-cache-dir -r requirements.txt

# Copie o projeto
COPY . .

# Exponha a porta
EXPOSE 5000

# Comando para executar a aplicação
CMD ["python", "todo_project/run.py"] 