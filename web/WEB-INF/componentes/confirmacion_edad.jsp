<%@ page contentType="text/html; charset=UTF-8" %>
<%
  if (request.getAttribute("sin_bandera_edad") != null) {
%>

<div id="confirmacion">
	<div id="confirmacion-contenedor">
		<img src="imagenes/logos/logo.png" alt="Logo de Amaxak"/>

		<div id="confirmacion-textos">

			<div id="carrusel_idioma" class="carousel slide"
        data-ride="carousel" data-pause=null data-interval=false>

	      <div class="carousel-inner" role="listbox">
          <div id="idioma0" class="item <%= idioma.equals("es") ? "active" : "" %>">

						<div class="confirmacion-pregunta">
							<p class="confirmacion-pregunta-texto">
							  ¿Tiene usted edad para beber alcohol en su país?
							</p>
						</div>
						<div class="confirmacion-respuesta">
							<div>
								<button type="button" class="confirmacion-respuesta-1"
									onclick="afirmativo()">
									Sí
								</button>
							</div>
							<div>
								<button type="button" class="confirmacion-respuesta-2"
									onclick="negativo()">
									No
								</button>
							</div>
						</div>

					</div>
					<div id="idioma1" class="item <%= idioma.equals("en") ? "active" : "" %>">

						<div class="confirmacion-pregunta">
							<p class="confirmacion-pregunta-texto">
							  Are you old enough to drink alcohol in your country?
							</p>
						</div>
						<div class="confirmacion-respuesta">
							<div>
								<button type="button" class="confirmacion-respuesta-1"
									onclick="afirmativo()">
									Yes
								</button>
							</div>
							<div>
								<button type="button" class="confirmacion-respuesta-2"
									onclick="negativo()">
									No
								</button>
							</div>
						</div>

					</div>
				</div>

				<div id="confirmacion-idiomas">
					<p id="confirmacion-idiomas-texto">
						<span>
              <button type= "button" 
                class="<%= idioma.equals("es") ? "activo" : "" %> opcion-idioma" 
                data-toggle="tooltip" data-placement="bottom" data-trigger="hover" title="Español"
								data-target="#carrusel_idioma" data-slide-to="0">
								Español </button>
						</span>
	          <span>
							<button type= "button" 
                class="<%= idioma.equals("en") ? "activo" : "" %> opcion-idioma" 
                data-toggle="tooltip" data-placement="bottom" data-trigger="hover" title="Inglés"
								data-target="#carrusel_idioma" data-slide-to="1">
								English </button>
						</span>
					</p>
				</div>

			</div>
		</div>
	</div>
</div>

<script>

  /* Para controlar la acción en caso de afirmación */
  var control_estado = 0
  var ruta_traducida = '<%= rutaTraducida %>'

	/* Para activar tooltips */
	$(function () {
  		$('[data-toggle="tooltip"]').tooltip()
	})

	/* Acción afirmativa */
	function afirmativo ()
	{
		enviar_confirmacion();
    if (control_estado % 2 == 0) {
		  $('#confirmacion').slideUp({
			  duration: 1000,
			  easing: 'easeOutExpo'
		  });
    } else {
      window.open(ruta_traducida, '_self')
    }
	}

	/* Acción negativa */
	function negativo ()
	{

	}

	/* Envía al servidor confirmación de edad */
	function enviar_confirmacion ()
	{
		var peticion_http = new XMLHttpRequest();
		peticion_http.onreadystatechange = function () {
			if (peticion_http.readyState === XMLHttpRequest.DONE) {
				if (peticion_http.status !== 200) {
        	console.log('Error al establecer confirmación de edad')
    		}
    	}
		};
		peticion_http.open('GET', '/confirmar_edad', true)
		peticion_http.send()
	}

	function reestablecer_scroll ()
	{
		var body = document.getElementsByTagName("body")[0]
		var html = document.getElementsByTagName("html")[0]
		body.style.overflowY = 'auto'
		html.style.overflowY = 'auto'
		body.style.maxHeight = 'auto'
		html.style.maxHeight = 'auto'
	}

	/* Control de cambios en el carrusel */
  var actual = <%= idioma.equals("es") ? "0" : "1" %>
	var traducciones = [['español', 'inglés'],
											['spanish', 'english']];

	$('#carrusel_idioma').on('slide.bs.carousel', function (e) {
    control_estado++;
	  if (e.direction == "left")
	    actual++
	  else
	    actual--

	  var it=0
	  $('.opcion-idioma').each(function(){
	  	$(this).attr('data-original-title', traducciones[actual][it])
	  	if (it == actual)
	  		$(this).addClass('activo')
	  	else
	  		$(this).removeClass('activo')
	  	it++
	  })
	})

</script>

<%
  }
%>
