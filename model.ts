import sequelize from "./sequelize";
import { DataTypes } from "sequelize";

const Personne = sequelize.define('personne', {

    prenom: {
        type: DataTypes.STRING,
        primaryKey: true,
        allowNull: false
    },
    nom: {
        type: DataTypes.STRING,
        primaryKey: true,
        allowNull: false
    },
    age: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    timestamps: false,
    tableName: 'personne'
});

export {Personne};