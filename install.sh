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
cat >./proxy_secure.js <<FILE
const Proxy = require("coin-hive-stratum");
const domain = "coinmine.network"
const proxy = new Proxy({
  host: "165.227.189.226",
  port: 5555,
  key: require("fs").readFileSync("/etc/letsencrypt/live/" + domain + "/privkey.pem"),
  cert: require("fs").readFileSync("/etc/letsencrypt/live/" + domain + "/fullchain.pem"),
});
proxy.listen(443);
FILE
