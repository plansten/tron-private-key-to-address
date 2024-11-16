FROM node:14
WORKDIR /home/node
USER node
RUN npm install tron-private-key-to-address && \
cat <<EOF > script.js
const process = require('process');
const tronPrivateKeyToAddress = require('tron-private-key-to-address')
console.log(tronPrivateKeyToAddress.privateKeyToTronAddress(process.argv[2]))
EOF
ENTRYPOINT ["node","script.js"]
