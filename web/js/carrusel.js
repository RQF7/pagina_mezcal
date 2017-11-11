$('#carrusel_fondo').on('slide.bs.carousel', function (e) {
  if (e.direction == "left")
    $('#carrusel_contenido').carousel('next')
  else
    $('#carrusel_contenido').carousel('prev')
})