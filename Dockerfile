FROM node:20

WORKDIR /attendance_recordeer

COPY package*.json ./

RUN npm install

COPY /src ./

RUN npm install -g expo-cli

CMD ["expo", "start"]