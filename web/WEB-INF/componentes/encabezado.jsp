<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${idioma}"/>
<fmt:setBundle basename="text"/>

<header>
  <div>
    <div>
      <div>
        <img src="imagenes/logos/logo.png"/>
      </div>
      <div>
        <div>
          <fmt:message key="urls.inicio" var="inicio"/>
          <a <%= ruta.equals("/" + pageContext.getAttribute("inicio")) ?
              "class=\"activo\"" : "" %> href="${inicio}">
            <fmt:message key="navegacion.inicio"/>
          </a>
        </div>
        <div>
          <fmt:message key="urls.historia" var="historia"/>
          <a <%= ruta.equals("/" + pageContext.getAttribute("historia")) ?
              "class=\"activo\"" : "" %> href="${historia}">
            <fmt:message key="navegacion.historia"/>
          </a>
        </div>
        <div>
          <fmt:message key="urls.procesos" var="procesos"/>
          <a <%= ruta.equals("/" + pageContext.getAttribute("procesos")) ?
              "class=\"activo\"" : "" %> href="${procesos}">
            <fmt:message key="navegacion.procesos"/>
          </a>
        </div>
        <div>
          <fmt:message key="urls.productos" var="productos"/>
          <a <%= ruta.equals("/" + pageContext.getAttribute("productos")) ?
              "class=\"activo\"" : "" %>
              href="${productos}">
            <fmt:message key="navegacion.productos"/>
          </a>
        </div>
        <div>
          <fmt:message key="urls.contacto" var="contacto"/>
          <a <%= ruta.equals("/" + pageContext.getAttribute("contacto")) ?
              "class=\"activo\"" : "" %> href="${contacto}">
            <fmt:message key="navegacion.contacto"/>
          </a>
        </div>
      </div>
      <div>
        <p>
          <a <%= idioma.equals("es") ? "class=\"activo\" href=\"" + ruta + "\"" 
              : "href=\"" + rutaTraducida + "\"" %>>
            Español
          </a> 
          / 
          <a <%= idioma.equals("en") ? "class=\"activo\" href=\"" + ruta + "\"" 
              : "href=\"" + rutaTraducida + "\"" %>>
            English
          </a>
        </p>
      </div>
    </div>
  </div>
</header>
