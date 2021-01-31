// Sidenav
const sidenav = document.querySelector('.sidenav');
M.Sidenav.init(sidenav, {});

// Slider
const slider = document.querySelector('.slider');
M.Slider.init(slider, {
    indicators: false,
    height: 500,
    transition: 500,
    interval: 6000
});

// Autocompletado
const ac = document.querySelector('.autocomplete');
M.Autocomplete.init(ac, {
    data:{
        "Quistococha": null,
        "Belén": null,
        "Río Nanay": null,
        "Plaza de armas": null,
        "Boulevard de Iquitos": null,
        "Río Amazonas": null
    } 
})

//Material Boxes
const mb = document.querySelectorAll('.materialboxed');
M.Materialbox.init(mb, {});


//Scrollspy
const ss = document.querySelectorAll('.scrollspy');
M.ScrollSpy.init(ss, {});

//Parallax
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.parallax');
    var instances = M.Parallax.init(elems, {});
});
