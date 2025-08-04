FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install -g n8n
CMD ["n8n"]
