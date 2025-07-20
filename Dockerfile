FROM node:18-alpine

WORKDIR /app

COPY package.json .

COPY . .

RUN rm -rf ./node_modules

RUN npm install

RUN npm run build

EXPOSE 4173

CMD ["npm", "run", "host"]