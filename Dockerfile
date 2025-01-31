FROM node:latest

COPY . .

RUN pip install -r requirements.txt
RUN sh 'npm install'

EXPOSE 5000

CMD ["node", "index.js"]

