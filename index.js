import express from 'express';
import router from './routes/index.js';
import db from './config/db.js';
import dotenv from 'dotenv';

const app = express();

//Cconectar a la BD
db.authenticate()
    .then( () => console.log('Base de datos conectada..') )
    .catch( error => console.log(error) );

const host = process.env.HOST || '0.0.0.0';
const port = process.env.PORT || 4000;

//Habilitar PUG
app.set('view engine', 'pug');

//Obtener el año actual
app.use((req, res, next) => {
    const year = new Date();
    res.locals.actualYear = year.getFullYear();
    res.locals.nombreSitio = "Iquitos Cultural";
    return next();
})

//Definir la carpeta publica
app.use(express.static('public'));

//Habilitar las rutas
app.use('/', router);


app.listen(port, host, () => {
    console.log(`El servidor esta funcionando en el puerto ${port}`);
})