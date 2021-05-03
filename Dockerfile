from node:lts-alpine3.10
run apk add --no-cache git;
run git clone https://github.com/pukup/node-hola/
workdir /node-hola
run npm install;
expose 3000
cmd ["node", "index.js"];
