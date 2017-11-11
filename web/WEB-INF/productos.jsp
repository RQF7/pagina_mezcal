<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title>Productos - Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/productos.css"/>
    <%@include file="componentes/bibliotecas.jsp"%>
  </head>
  <body>
    <%@include file="componentes/encabezado.jsp"%>
    <div class="recuadro_de_texto">
      <div>
        <div>
          <h1>AMAXAK JOVEN</h1>
          <div>
            <p>
              Mezcal Artesanal Joven.
            </p>
            <p>
              100% Maguey Espadín.
            </p>
            <p>
              38% Alc. Vol.
            </p>
            <p>
              Certificación NOM-G48R (CRM).
            </p>
            <p>
              Presentaciones de 750 y 250 ml.
            </p>
          </div>
          <p>
            Elaborado en la Fábrica de Mezcal <i>El Refugio</i>, Pilcaya, Región Norte del Estado de
            GUERRERO. Envasado de Origen.
          </p>
          <p>
            <b>Producido</b> con Maguey Angosto, endémico de la región, clasificado como Agave
            Angustifolia Haw, y también conocido como Espadín. Se cosecha en suelos montañosos entre
            los 1,300 y los 1,400 m.s.n.m., tras un crecimiento de 5 a 6 años.
          </p>
          <p>
            <b>Cocimiento</b> en horno cónico de tezontle (piedra volcánica) sellado con hoja de
            platano. <b>Fermentación</b> en tinas de hierro forjado. Doble destilación en alambique
            de cobre.
          </p>
          <p>
            <b>Rasgos característicos:</b> olor suave a maguey cocido, ligeramente ahumado y ligero
            olor a barro y tierra húmeda. Sabor suave a maguey cocido, barro, frutales, ligeramente
            dulce. Perlas combinadas de duración media.
          </p>
        </div>
      </div>
    </div>
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    <%@include file="componentes/confirmacion_edad.jsp"%>
  </body>
</html>
