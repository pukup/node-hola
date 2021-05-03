from node:lts-alpine3.10
run git clone https://github.com/pukup/node-hola/
run apk add --no-cache git;
workdir /node-hola
run npm install;
expose 3000
cmd ["node", "index.js"];
