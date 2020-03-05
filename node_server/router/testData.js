const express = require("express");
const router = express();
const config = require("./config");

const base_url = "http://" + config.IP + ":" + config.PORT + "/images/";
router.get("/", (req, res) => {
    // req.body
    //GET地址query传参 http://127.0.0.1:3000/getBannerData?arg=hellworld&id=99&name=CoderWGB
    /*
    log如下:
    {
        arg: 'hellworld',
        id: '99',
        name: 'CoderWGB'
    }
    传了一个参数arg: hellworld
    */
    console.log(req.query);
    var testArg = req.query.arg;
    console.log("传了一个参数arg: " + testArg);
    var data = {
        "code": "0",
        "msg": "success",
        "data": [{
            "image": base_url + "banner.jpg"
        }]
    };
    res.send(data);
});
module.exports = router;