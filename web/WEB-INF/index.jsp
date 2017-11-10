<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title>Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/index.css"/>
    <%@include file="componentes/bibliotecas.jsp"%>
  </head>
  <body>
    <!-- Encabezado -->
    <%@include file="componentes/encabezado.jsp"%>

    <!-- Contenido de página -->
    <div>
      <p>
        "Cinco generaciones de tradición mezcalera nos respaldan..."
      </p>
    </div>

    <!-- Fondos -->
    <div id="carrusel_fondo" class="carousel slide"
        data-ride="carousel" data-pause=null>
      <div class="carousel-inner" role="listbox">
        <div id="fondo1" class="fondos item active"></div>
        <div id="fondo2" class="fondos item"></div>
        <div id="fondo3" class="fondos item"></div>
      </div>
    </div>
    <!-- ATENCIÓN: El carrusel no funciona en Internet Explorer 9 (o anteriores) -->

    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
