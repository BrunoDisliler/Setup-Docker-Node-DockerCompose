# Pega a última versão do Node alpine (versão reduzida)
FROM node:alpine

# Diretório dentro da minha máquina que quero trabalhar
WORKDIR /usr/app

# Copiar todos or arquivos que começam com "package" e terminam com "json"
COPY package*.json ./
RUN npm install

# Após o procedimento acima, irá copiar todos os arquivos restantes lá pra dentro do container
COPY . .

# Qual a porta meu servidor precisa disponibilizar para acesso
EXPOSE 3000

# De ser única por Dockerfile
# Basicamente indica qual o comando que meu servidor precisa rodar para a aplicação iniciar
CMD ["npm", "start"]