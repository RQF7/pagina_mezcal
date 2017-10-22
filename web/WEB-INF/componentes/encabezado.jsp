<%@ page contentType="text/html; charset=UTF-8" %>
<%
  String ruta = (String) request.getAttribute("ruta");
%>
<header>
  <div>
    <div>
      <div>
        <img src="imagenes/logos/logo.png"/>
      </div>
      <div>
        <div>
          <a <%= ruta.equals("/inicio") ? "class=\"activo\"" : "" %>
              href="inicio">Inicio</a>
        </div>
        <div>
          <a <%= ruta.equals("/historia") ? "class=\"activo\"" : "" %>
              href="historia">Historia</a>
        </div>
        <div>
          <a <%= ruta.equals("/procesos") ? "class=\"activo\"" : "" %>
              href="procesos">Procesos</a>
        </div>
        <div>
          <a <%= ruta.equals("/productos") ? "class=\"activo\"" : "" %>
              href="productos">Productos</a>
        </div>
        <div>
          <a <%= ruta.equals("/contacto") ? "class=\"activo\"" : "" %>
              href="contacto">Contacto</a>
        </div>
      </div>
      <div>
        <p>
          <a class="activo">Español</a> / <a>English</a>
        </p>
      </div>
    </div>
  </div>
</header>
