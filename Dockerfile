FROM node:slim

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install -y curl gawk sed && \
    chmod +x deploy.js && \
    npm install

CMD ["node", "deploy.js"]