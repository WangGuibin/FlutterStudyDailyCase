const express = require("express");
const path = require("path");
const app = express();

app.use(express.static(path.resolve(__dirname, "public")));

app.use(function(req, res, next) {
    const proxy = req.query.proxy;
    if (proxy) {
        req.header.cookie = req.header.cookie + `__proxy__${proxy}`;
    }
    next();
});

app.use("/getBannerData", require("./router/testData"));

const port = process.env.port || 3000;
app.listen(port, () => {
    console.log(`Node WebServer服务已启动 runing @http://localhost:${port}`);
});

module.exports = app;