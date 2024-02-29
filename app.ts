const express = require('express');
import {Request,Response} from "express";
import { Sequelize } from "sequelize";
import { Personne } from "./model";

const app = express()
const port = 8080;

app.use(express.json());

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});

app.get('/health', (req: Request, res: Response) => {
    res.status(200).send('200 OK');
});

app.post('/api/insert', async (req:Request, res:Response) => {
    try {
        const newPackage = await Personne.create(
            {"nom":req.body.nom,
            "prenom":req.body.prenom,
            "age":req.body.age});
        res.status(201).json(newPackage);
    } catch (error: any) {
        res.status(500).send(error.message);
    }
});