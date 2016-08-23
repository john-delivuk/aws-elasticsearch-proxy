FROM node:6.4
MAINTAINER John Delivuk <john@delivuk.com>

COPY index.js /tmp/index.js
COPY package.json /tmp/package.json

WORKDIR /tmp/
RUN npm install 

EXPOSE 8081

CMD [ "node", "index.js" ]