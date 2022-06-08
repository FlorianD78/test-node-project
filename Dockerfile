FROM node:13.12.0-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
RUN npm install
RUN npm run test -- -t src/component/App.test.js

COPY . ./

CMD ["npm", "start"]
