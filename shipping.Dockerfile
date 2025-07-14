# 1. Imagem base do Node.js
FROM node

# 2. Define o diretório de trabalho dentro do container
WORKDIR /app

# 3. Copia o código fonte da máquina local para dentro do container
COPY . /app

# 4. Instala as dependências do projeto
RUN npm install

# 5. Comando para iniciar o serviço Shipping
CMD ["node", "/app/services/shipping/index.js"]