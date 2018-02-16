nvm install 8
npm init --yes
npm install --save coin-hive-stratum
cat >./proxy.js <<FILE
const Proxy = require("coin-hive-stratum");
const proxy = new Proxy({
  host: "165.227.189.226",
  port: 3333
});
proxy.listen(9090);
FILE
