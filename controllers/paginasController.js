import { Tour } from '../models/Tour.js';


const paginaInicio = async (req, res) => {

    //Traer datos de los tours populares.
    const tours = await Tour.findAll({
        where: {
            popular: 1
        }
    });

    res.render('inicio', {
        titulo: 'Tours populares',
        tours
    });
}

const paginaNosotros = (req, res) => {
    res.render('nosotros', {
        titulo: 'Quiénes somos',
        quienes: 'Iquitos Cultural es un operador turístico, que empezó sus operaciones desde el año 1991, de manera continua y perseverante, mostrando al visitante los diferentes atractivos turísticos, arquitectónicos, artísticos y gastronómicos de la ciudad de Iquitos. Les invitamos a descubrir IQUITOS, la ciudad de los azulejos y las razones porque es un destino sorprendente y encantador, que siempre se añora regresar o quedarse para siempre',
        vision: 'Ser la empresa líder en organizar recorrigod turísticos en la ciudad de Iquitos y la Amazonía Peruana',
        mision: 'Ser la empresa preferidad para organizar recorridos turísticos con mayor enfoque en la seguridad y el servicio de calidad con aplicación de tecnología para nuestros clientes.',
        objetivo: 'Como una de las empresas líder en la industria del turismo, Iquitos Cultural tiene com oprincipal objetivo el innovar en todo lo que se realiza en los productos y servicios que ofrece a sus clientes exigentes quienes le brindan una buena reputación en el mercado turístico.'
    });
}

const paginaTours = async (req, res) => {
    const tours = await Tour.findAll()

    res.render('tours', {
        titulo: 'Nuestros Tours',
        tours
    });
}

const paginaDetalleTour = async (req, res) => {

    const { id } = req.params;
    const tour = await Tour.findOne({ where : { id }});
    const precio1 = tour.precio.split(",")[0]

    res.render('toursDetalle', {
        tour,
        adulto: precio1
    });
}

export {
    paginaInicio,
    paginaNosotros,
    paginaTours,
    paginaDetalleTour
}