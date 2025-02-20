FROM python:3.8-slim

# Instala as dependências
RUN pip install flask azure-storage-blob

# Cria o diretório do chatbot
WORKDIR /app

# Copia o código do chatbot
COPY . /app

# Expose a porta do chatbot
EXPOSE 5000

# Define o comando para executar o chatbot
CMD ["flask", "run", "--host=0.0.0.0"]