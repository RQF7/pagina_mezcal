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

    <style>
      .item.active {
        transform: none;
        perspective: none;
      }
      @media all and (transform-3d), (-webkit-transform-3d) {
        .carousel-inner > .item.next.left,
        .carousel-inner > .item.prev.right,
        .carousel-inner > .item.active {
          transform: none;
        }
      }
    </style>
  </head>
  <body>

    <%@include file="componentes/encabezado.jsp"%>
    <div id="carrusel_contenido" class="carousel slide"
        data-ride="carousel" data-pause=null data-interval=30000>
      
      <!-- Indicadores de carrusel -->
      <ol class="carousel-indicators">
        <li data-target="#carrusel_contenido" data-slide-to="0" class="active"></li>
        <li data-target="#carrusel_contenido" data-slide-to="1"></li>
        <li data-target="#carrusel_contenido" data-slide-to="2"></li>
        <li data-target="#carrusel_contenido" data-slide-to="3"></li>
        <li data-target="#carrusel_contenido" data-slide-to="4"></li>
      </ol>

      <div class="carousel-inner" role="listbox">
        <div id="contenido1" class="item producto active"></div>
        <div id="contenido2" class="item producto">
          <div class="recuadro_de_texto" data-spy="affix" data-offset-top="105">
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
        <div id="contenido3" class="item producto">
          <div class="recuadro_de_texto" data-spy="affix" data-offset-top="105">
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
        <div id="contenido4" class="item producto">
          <div class="recuadro_de_texto" data-spy="affix" data-offset-top="105">
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
        <div id="contenido5" class="item producto">
          <div class="recuadro_de_texto" data-spy="affix" data-offset-top="105">
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

    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
