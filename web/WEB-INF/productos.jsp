<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${idioma}"/>
<fmt:setBundle basename="text"/>

<!DOCTYPE html>
<html lang="${idioma}">
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title><fmt:message key="navegacion.productos"/> - Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/productos.css"/>
    <%@include file="componentes/bibliotecas.jsp"%>
  </head>
  <body>
    <!-- Encabezado -->
    <%@include file="componentes/encabezado.jsp"%>

    <!-- Contenido de página -->
    <div id="carrusel_contenido" class="carousel slide"
        data-ride="carousel" data-pause=null data-interval=false>

      <div class="carousel-inner" role="listbox">
        <div id="contenido1" class="item active">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1><fmt:message key="productos.joven38.titulo"/></h1>
                <div>
                  <p><fmt:message key="productos.genericos.clasificacion"/></p>
                  <p><fmt:message key="productos.joven38.tipo"/></p>
                  <p><fmt:message key="productos.genericos.maguey"/></p>
                  <p><fmt:message key="productos.joven38.alcohol"/></p>
                  <p><fmt:message key="productos.genericos.certificacion"/></p>
                  <p><fmt:message key="productos.genericos.origen"/></p>
                  <p><fmt:message key="productos.genericos.presentaciones"/></p>
                </div>
                <p><fmt:message key="productos.genericos.parrafo1"/></p>
                <p><fmt:message key="productos.genericos.parrafo2"/></p>
                <p><fmt:message key="productos.genericos.parrafo3"/></p>
                <p><fmt:message key="productos.genericos.parrafo4"/></p>
              </div>
            </div>
          </div>
        </div>
        <div id="contenido2" class="item">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1><fmt:message key="productos.joven45.titulo"/></h1>
                <div>
                  <p><fmt:message key="productos.genericos.clasificacion"/></p>
                  <p><fmt:message key="productos.joven45.tipo"/></p>
                  <p><fmt:message key="productos.genericos.maguey"/></p>
                  <p><fmt:message key="productos.joven45.alcohol"/></p>
                  <p><fmt:message key="productos.genericos.certificacion"/></p>
                  <p><fmt:message key="productos.genericos.origen"/></p>
                  <p><fmt:message key="productos.genericos.presentaciones"/></p>
                </div>
                <p><fmt:message key="productos.genericos.parrafo1"/></p>
                <p><fmt:message key="productos.genericos.parrafo2"/></p>
                <p><fmt:message key="productos.genericos.parrafo3"/></p>
                <p><fmt:message key="productos.genericos.parrafo4"/></p>
              </div>
            </div>
          </div>
        </div>
        <div id="contenido3" class="item">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1><fmt:message key="productos.reposado.titulo"/></h1>
                <div>
                  <p><fmt:message key="productos.genericos.clasificacion"/></p>
                  <p><fmt:message key="productos.reposado.tipo"/></p>
                  <p><fmt:message key="productos.genericos.maguey"/></p>
                  <p><fmt:message key="productos.reposado.alcohol"/></p>
                  <p><fmt:message key="productos.genericos.certificacion"/></p>
                  <p><fmt:message key="productos.genericos.origen"/></p>
                  <p><fmt:message key="productos.genericos.presentaciones"/></p>
                </div>
                <p><fmt:message key="productos.genericos.parrafo1"/></p>
                <p><fmt:message key="productos.genericos.parrafo2"/></p>
                <p><fmt:message key="productos.genericos.parrafo3"/></p>
                <p><fmt:message key="productos.reposado.parrafo"/></p>
               <p><fmt:message key="productos.genericos.parrafo4"/></p>
              </div>
            </div>
          </div>
        </div>
        <div id="contenido4" class="item">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1><fmt:message key="productos.licor.titulo"/></h1>
                <div>
                  <p><fmt:message key="productos.licor.tipo"/></p>
                  <p><fmt:message key="productos.licor.alcohol"/></p>
                  <p><fmt:message key="productos.genericos.presentaciones"/></p>
                </div>
                <p><fmt:message key="productos.licor.parrafo1"/></p>
                <p><fmt:message key="productos.licor.parrafo2"/></p>
                <p><fmt:message key="productos.licor.parrafo3"/></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Fondos -->
    <div id="carrusel_fondo" class="carousel slide"
        data-ride="carousel" data-pause=null data-interval=25000>
      <ol class="carousel-indicators">
        <li data-target="#carrusel_fondo" data-slide-to="0" class="active"></li>
        <li data-target="#carrusel_fondo" data-slide-to="1"></li>
        <li data-target="#carrusel_fondo" data-slide-to="2"></li>
        <li data-target="#carrusel_fondo" data-slide-to="3"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div id="fondo1" class="fondos item active"></div>
        <div id="fondo2" class="fondos item"></div>
        <div id="fondo3" class="fondos item"></div>
        <div id="fondo4" class="fondos item"></div>
      </div>
    </div>
    <script src="js/carrusel.js"></script>
    <!-- ATENCIÓN: El carrusel no funciona en Internet Explorer 9 (o anteriores) -->

    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
