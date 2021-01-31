//import { express } from 'express';
import Sequelize from 'sequelize';
import db from '../config/db.js';

export const Tour = db.define('tours', {
    titulo: {
        type: Sequelize.STRING
    },
    subtitulo: {
        type: Sequelize.STRING
    },
    precio: {
        type: Sequelize.STRING
    },
    descripcion: {
        type: Sequelize.STRING
    },
    duracion: {
        type: Sequelize.STRING
    },
    resumen: {
        type: Sequelize.STRING
    },
    condiciones: {
        type: Sequelize.STRING
    },
    imagen: {
        type: Sequelize.STRING
    },
    popular: {
        type: Sequelize.INTEGER
    }
})
