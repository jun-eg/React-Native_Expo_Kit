FROM node:20

WORKDIR /myapp

COPY . .

RUN apt update && apt install -y bash

RUN yarn global add @expo/cli

RUN yarn global add @expo/ngrok@^4.1.0

RUN yarn install

CMD yarn expo start --tunnel