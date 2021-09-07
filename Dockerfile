FROM node:12.13 As development

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run generate-data

CMD ["node","index.js"]
