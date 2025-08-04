FROM node:20-alpine

# Устанавливаем зависимости
RUN apk add --no-cache bash python3 make g++ git

# Устанавливаем n8n
RUN npm install -g n8n@latest

# Рабочая директория
WORKDIR /data

# Порт и запуск
EXPOSE 5678
CMD ["n8n", "start"]
