FROM node:latest

COPY . .

RUN sh 'npm install'

EXPOSE 5000

CMD ["node", "index.js"]

