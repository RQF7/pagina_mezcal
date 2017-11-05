<%@ page contentType="text/html; charset=UTF-8" %>
<%
  if (request.getAttribute("sin_bandera_edad") != null) {
%>

<script>

	/* Para activar tooltips */
	$(function () {
  		$('[data-toggle="tooltip"]').tooltip()
	})

	/* Acción afirmativa */
	function afirmativo ()
	{
		enviar_confirmacion();
		$('#confirmacion').slideUp({
			duration: 1000,
			easing: 'easeOutExpo'
		});
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
        	console.log('Error al establecer confirmación de edad');
    		}
    	}
		};
		peticion_http.open('GET', '/confirmar_edad', true);
		peticion_http.send();
	}

	function reestablecer_scroll ()
	{
		var body = document.getElementsByTagName("body")[0];
		var html = document.getElementsByTagName("html")[0];
		body.style.overflowY = 'auto';
		html.style.overflowY = 'auto';
		body.style.maxHeight = 'auto';
		html.style.maxHeight = 'auto';
	}

</script>
<div id="confirmacion">
	<div id="confirmacion-contenedor">
		<img src="imagenes/logos/logo.png" alt="Logo de Amaxak"/>
		<div id="confirmacion-textos">

			<div id="confirmacion-pregunta">
				<p id="confirmacion-pregunta-texto">
				  ¿Tiene usted edad para beber alcohol en su país?
				</p>
			</div>

			<div id="confirmacion-respuesta">
				<div>
					<button type="button" id="confirmacion-respuesta-1"
						onclick="afirmativo()">
						Sí
					</button>
				</div>
				<div>
					<button type="button" id="confirmacion-respuesta-2"
						onclick="negativo()">
						No
					</button>
				</div>
			</div>

			<div id="confirmacion-idiomas">
				<p id="confirmacion-idiomas-texto">
					<span>
						<button type= "button" class="activo" data-toggle="tooltip"
							data-placement="bottom" data-trigger="hover" title="Español"
							onclick="cambiar_idioma()">
							Español </button>
					</span>
          <span>
						<button type= "button" class="activo" data-toggle="tooltip"
							data-placement="bottom" data-trigger="hover" title="Inglés"
							onclick="cambiar_idioma()">
							English </button>
					</span>
				</p>
			</div>

		</div>
	</div>
</div>

<%
  }
%>
