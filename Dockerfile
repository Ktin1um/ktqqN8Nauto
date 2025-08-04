FROM node:18-alpine

# Устанавливаем необходимые зависимости
RUN apk add --no-cache bash python3 make g++ git

# Устанавливаем n8n через npm
RUN npm install -g n8n@latest

# Создаем рабочую директорию
WORKDIR /data

# Запускаем n8n
CMD ["n8n", "start"]
