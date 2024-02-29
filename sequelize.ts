import { Sequelize } from 'sequelize-typescript';

const sequelize = new Sequelize({
    database: 'database_containerization_PW5',
    username: 'postgres',
    dialect: 'postgres',
    password: 'password',
    host: 'dbTP5',
});

export default sequelize;