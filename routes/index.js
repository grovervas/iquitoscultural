import express from 'express';
import { paginaInicio, paginaNosotros, paginaTours, paginaDetalleTour } from '../controllers/paginasController.js'

const router = express.Router();

router.get( '/', paginaInicio );

router.get( '/nosotros', paginaNosotros );

router.get( '/tours', paginaTours );

router.get( '/tours/:id', paginaDetalleTour );


export default router;