<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${idioma}"/>
<fmt:setBundle basename="text"/>

<!DOCTYPE html>
<html lang="${idioma}">
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title>Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/index.css"/>
    <%@include file="componentes/bibliotecas.jsp"%>
  </head>
  <body>
    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>

    <!-- Encabezado -->
    <%@include file="componentes/encabezado.jsp"%>

    <!-- Contenido de página -->
    <div id="contenido_de_inicio">
      <p>
        <fmt:message key="inicio.texto"/>
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
  </body>
</html>
