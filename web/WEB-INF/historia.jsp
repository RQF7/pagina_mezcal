<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!--c:set var="language" value="${not empty param.language ?
    param.language : not empty language ?
    language : pageContext.request.locale}"
    scope="session"/-->
<c:set var="language" value="en"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="text"/>

<!DOCTYPE html>
<html lang="${language}">
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title><fmt:message key="navegacion.historia"/> - Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/historia.css"/>
    <%@include file="componentes/bibliotecas.jsp"%>
  </head>
  <body>
    <!-- Encabezado -->
    <%@include file="componentes/encabezado.jsp"%>

    <!-- Contenido de página -->
    <div class="recuadro_de_texto">
      <div>
        <div>
          <h1><fmt:message key="historia.titulo"/></h1>
          <p><fmt:message key="historia.parrafo1"/></p>
          <p><fmt:message key="historia.parrafo2"/></p>
          <p><fmt:message key="historia.parrafo3"/></p>
          <p><fmt:message key="historia.parrafo4"/></p>
        </div>
      </div>
    </div>

    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
