# Imagem base oficial do Bun
FROM oven/bun:1.1

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependências
COPY bun.lockb package.json ./

# Instala as dependências
RUN bun install

# Copia o restante da aplicação
COPY . .

# Expõe a porta (ajuste conforme sua aplicação)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["bun", "dev"]