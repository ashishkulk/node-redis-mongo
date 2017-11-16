FROM node:4.8.5

RUN mkdir /node-app

ADD ["package.json","/node-app/package.json"]

WORKDIR /node-app/

RUN npm install 

ADD ["./","/node-app/"]

CMD node index.js
