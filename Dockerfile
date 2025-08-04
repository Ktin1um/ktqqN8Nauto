FROM node:18-alpine
RUN apk add --no-cache git python3 make g++
WORKDIR /usr/src/app
RUN npm install -g n8n
EXPOSE 5678
CMD ["n8n", "start"]
