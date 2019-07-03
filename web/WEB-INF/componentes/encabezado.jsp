<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${idioma}"/>
<fmt:setBundle basename="text"/>

<%-- header>
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
</header --%>

<nav id="barra_de_navegacion" class="navbar navbar-default">

  <!-- Contenedor de barra de navegación. -->
  <div class="container">

    <!-- Logo y botón de activación en pantallas pequeñas. -->
    <div class="navbar-header">

      <!-- Botón para expandir menú en pantallas pequeñas. -->
      <button 
          type="button" 
          class="navbar-toggle collapsed navbar-btn" 
          data-toggle="collapse" 
          data-target="#menu_colapsable" 
          aria-expanded="false">
        <span class="sr-only">Activar/desactivar navegación</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <!-- Logo. -->
      <a class="navbar-brand" href="/">
        <img alt="Brand" src="imagenes/logos/logo.png">
      </a>

    </div>

    <!-- Ligas de navegación. -->
    <div class="collapse navbar-collapse" id="menu_colapsable">
      <div class="nav navbar-nav navbar-right">
        <div id="selector_de_idiomas">
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
        <ul class="nav navbar-nav">
          <li>
            <fmt:message key="urls.inicio" var="inicio"/>
            <a <%= ruta.equals("/" + pageContext.getAttribute("inicio")) ?
                "class=\"activo\"" : "" %> href="${inicio}">
              <fmt:message key="navegacion.inicio"/>
            </a>
          </li>
          <li>
            <fmt:message key="urls.historia" var="historia"/>
            <a <%= ruta.equals("/" + pageContext.getAttribute("historia")) ?
                "class=\"activo\"" : "" %> href="${historia}">
              <fmt:message key="navegacion.historia"/>
            </a>
          </li>
          <li>
            <fmt:message key="urls.procesos" var="procesos"/>
            <a <%= ruta.equals("/" + pageContext.getAttribute("procesos")) ?
                "class=\"activo\"" : "" %> href="${procesos}">
              <fmt:message key="navegacion.procesos"/>
            </a>
          </li>
          <li>
            <fmt:message key="urls.productos" var="productos"/>
            <a <%= ruta.equals("/" + pageContext.getAttribute("productos")) ?
                "class=\"activo\"" : "" %>
                href="${productos}">
              <fmt:message key="navegacion.productos"/>
            </a>
          </li>
          <li>
            <fmt:message key="urls.contacto" var="contacto"/>
            <a <%= ruta.equals("/" + pageContext.getAttribute("contacto")) ?
                "class=\"activo\"" : "" %> href="${contacto}">
              <fmt:message key="navegacion.contacto"/>
            </a>
          </li>
        </ul>
      </div>
    </div>

  </div> <!-- Contenedor de barra de navegación. -->
</nav>
