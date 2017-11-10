<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="componentes/meta.jsp"%>
    <title>Procesos - Mezcal Amaxak</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link rel="stylesheet" href="css/procesos.css"/>
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
                <h1>Nuestros procesos</h1>
                <p>
                  El mezcal es una bebida que se encuentra profundamente arraigada en la vida y la
                  cultura del Estado de Guerrero, y en el caso de <b>Amaxak</b>, es el resultado de
                  revalorar las características que lo hacen único en el diverso mundo de los
                  mezcales.
                </p>
                <p>
                  La elaboración de nuestro Mezcal comienza con la siembra de la materia prima, una
                  variedad regional de maguey espadín, también conocido como angosto o criollo. Este
                  se planta en tierras abruptas, fragmentadas y de poca extensión de cultivo,
                  pasando de 5 a 7 años para su maduración. Transcurrido ese tiempo, se cosecha y se
                  traslada a la fábrica, para dar paso al proceso de fabricación del mezcal.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div id="contenido2" class="item">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1>Nuestros procesos</h1>
                <p>
                  Una vez en nuestras instalaciones, las cabezas de agave se pesan y se acomodan
                  alrededor de un horno cónico excavado en la tierra y recubierto de piedra
                  volcánica. Con varias horas de anticipación se prende el horno, mismo que será
                  alimentado con leña de recolección, en cuanto ha alcanzado la temperatura ideal,
                  las piñas se vuelcan al interior, formando un cono que se cubre con hoja de
                  plátano y tierra, para realizar el proceso de cocción que durará varios días.
                </p>
                <p>
                  Ya cocido, el maguey es cortado en trozos más pequeños para ser machacados y
                  desgarrados. El bagazo resultante se pone a fermentar en tinas con agua,
                  transformándose por acción de sus propias levaduras en alcoholes.
                </p>
              </div>
            </div>
          </div>
        </div>
        <div id="contenido3" class="item">
          <div class="recuadro_de_texto">
            <div>
              <div>
                <h1>Nuestros procesos</h1>
                <p>
                  Terminada la fermentación, se procede a realizar la doble destilación, proceso
                  para separar los diferentes alcoholes y obtener el Mezcal Joven, en un alambique
                  de cobre a fuego directo. Posteriormente podemos llevar este mezcal al reposo en
                  barricas de Roble Blanco, o utilizarlo en la preparación de nuestro famoso licor.
                </p>
                <p>
                  Todos los procesos de cultivo de maguey, fabricación y envasado de nuestros
                  productos, son estrictamente vigilados por el <b>Consejo Regulador del Mezcal</b>,
                  con lo cual se obtiene la certificación de la <b>NOM 070</b>, la cual norma la
                  <b>Denominación de Origen</b> del Mezcal.
                </p>
                <!-- TODO: poner link a página de CRM. -->
                <p>
                  A la par de perpetuar las técnicas artesanales y de incorporar de manera cuidadosa
                  las modernas, en la fábrica de mezcal «<i>El Refugio</i>», somos conscientes de
                  nuestra responsabilidad ambiental y social. Desde hace más de veinte años,
                  fomentamos la creación de viveros y plantaciones de agave, la reforestación y el
                  manejo sustentable de los recursos naturales e hídricos, así como de los desechos
                  de la producción. Por otro lado, vemos como un valor intrínseco del mezcal, la
                  generación de fuentes de empleo y el apoyo a las numerosas familias que participan
                  en su elaboración.
                </p>
                <!-- TODO: ¿Los recursos hidrícos no van incluidos en los recursos naturales? -->
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
      </ol>
      <div class="carousel-inner" role="listbox">
        <div id="fondo1" class="fondos item active"></div>
        <div id="fondo2" class="fondos item"></div>
        <div id="fondo3" class="fondos item"></div>
      </div>
    </div>
    <!-- ATENCIÓN: El carrusel no funciona en Internet Explorer 9 (o anteriores) -->

    <!-- Confirmación de edad -->
    <%@include file="componentes/confirmacion_edad.jsp"%>

    <script>
      $('#carrusel_fondo').on('slide.bs.carousel', function (e) {
        if (e.direction == "left")
          $('#carrusel_contenido').carousel('next')
        else
          $('#carrusel_contenido').carousel('prev')
      })
    </script>
  </body>
</html>
