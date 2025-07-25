var mqtt = require("mqtt");
require("dotenv").config();

var client = mqtt.connect("mqtt://localhost", {
    username: process.env.DEVICE_TOKEN_1,
});

client.on("connect", function () {
    console.log("connected");

    client.subscribe("v1/devices/me/attributes/response/+");
    client.publish(
        "v1/devices/me/attributes/request/1",
        JSON.stringify({
            clientKeys: "humidity,temperature",
            sharedKeys: "samplingInterval",
        })
    );
});

client.on("message", function (topic, message) {
    console.log("Message received");
    console.log("response.topic: " + topic);
    console.log("response.body: " + message.toString());
    client.end();
});
