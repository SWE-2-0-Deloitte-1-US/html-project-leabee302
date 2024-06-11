FROM node:18

COPY package.json ./ 

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]