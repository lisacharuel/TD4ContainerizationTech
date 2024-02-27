const express = require('express');
import {Request,Response} from "express";

const app = express()
const port = 8080;

app.get('/health', (req: Request, res: Response) => {
    res.status(200).send('200 OK');
});

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
