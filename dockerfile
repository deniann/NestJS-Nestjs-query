FROM node:16-alpine

WORKDIR /app

COPY package.json dest
COPY yarn.lock .

RUN yarn 

COPY . .

CMD [ "yarn", "start:dev" ]