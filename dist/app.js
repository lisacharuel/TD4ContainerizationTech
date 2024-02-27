"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require('express');
const app = express();
const port = 8080;
app.get('/health', (req, res) => {
    res.status(200).send('200 OK');
});
app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
