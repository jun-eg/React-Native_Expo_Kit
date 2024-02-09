FROM node:16.20.0

RUN apt-get update && apt-get install -y android-sdk

ENV ANDROID_HOME /usr/lib/android-sdk

ENV PATH $PATH:$ANDROID_HOME/platform-tools

COPY test_app/package*.json ./

RUN npm install

WORKDIR /test_app
