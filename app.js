"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var express = require('express');
var app = express();
var port = 8080;
app.get('/health', function (req, res) {
    res.status(200).send('200 OK');
});
app.listen(port, function () {
    console.log("Server is listening on port ".concat(port));
});
