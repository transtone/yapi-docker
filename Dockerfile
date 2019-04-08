FROM node:10-alpine

RUN npm install -g yapi-cli --registry=https://registry.npm.taobao.org 
RUN apk update && apk add --no-cache make python git

WORKDIR /my-yapi

ENTRYPOINT ["node"]
CMD ["vendors/server/app.js"]
