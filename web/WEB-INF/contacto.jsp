<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title>Contacto - Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/contacto.css"/>
    <% if (request.getAttribute("sin_bandera_edad") != null) { %>
      <link rel="stylesheet" href="css/confirmacion_edad.css"/>
    <% } %>
  </head>
  <body>
    <%@include file="componentes/encabezado.jsp"%>
    <div>
      <div>
        <div>
          <h1>Informes y ventas</h1>
            <div>
              <div>
                <img src="imagenes/logos/logo.png"/>
                <p>
                  Domicilio conocido «Rancho El Refugio», carretera Tetipac-Pilcaya.
                </p>
                <p>
                  El Platanar, Pilcaya, Guerrero, México.
                </p>
                <p>
                  info@mezcal.mx
                </p>
              </div>
              <div>
                <img src="imagenes/logos/logoEP.png"/>
                <p>
                  Benito Juárez No. 7, col. centro.
                </p>
                <p>
                  Taxco de Alarcón, Guerrero, México.
                </p>
                <p>
                  +52-762-627-3291
                </p>
                <p>
                  portaldegro@gmail.com
                </p>
              </div>
            </div>
          </p>
        </div>
      </div>
    </div>
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
