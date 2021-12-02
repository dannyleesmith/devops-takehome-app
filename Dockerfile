FROM node:16.13.1-alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install && npm install pm2 -g

COPY ./ /app/

EXPOSE 3000

CMD [ "pm2", "start", "index.js", "--no-daemon" ]
