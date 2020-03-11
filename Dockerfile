FROM node:latest

# Define a pasta da aplicacao
WORKDIR /usr/src/app

# Copia todos os arquivos da origem para a pasta de destino no futuro container
COPY . .

# Instala dependencias do npm
RUN npm install

# Expoe uma porta http do container
EXPOSE 8080

# Executa minha aplicacao node, na porta 8080
CMD ["node", "threats.js", "8080"]
