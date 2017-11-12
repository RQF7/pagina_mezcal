
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Locale;

public class Controlador extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest peticion, HttpServletResponse respuesta)
      throws ServletException, IOException {

    String informacion = peticion.getServletPath();
    informacion = (informacion.equals("/")) ? "/inicio" : informacion;

    HttpSession sesion = peticion.getSession();
    if (informacion.equals("/confirmar_edad")) {
      sesion.setAttribute("bandera_edad", "");
      respuesta.setStatus(200);
      return;
    }

    if (sesion.getAttribute("bandera_edad") == null) {
      peticion.setAttribute("sin_bandera_edad", "");
    }

    String rutaDestino = "";
    String idioma = "";
    String rutaTraducida = "";

    /* TODO: Sacar urls de archivos de propiedades. */

    switch (informacion) {
      case "/inicio": case "/home":
        rutaDestino = "/index.jsp";
        idioma = (informacion.equals("/inicio")) ? "es" : "en";
        rutaTraducida = (idioma.equals("es")) ? "/home" : "/inicio";
        break;
      case "/productos": case "/products":
        rutaDestino = "/productos.jsp";
        idioma = (informacion.equals("/productos")) ? "es" : "en";
        rutaTraducida = (idioma.equals("es")) ? "/products" : "/productos";
        break;
      case "/procesos": case "/processes":
        rutaDestino = "/procesos.jsp";
        idioma = (informacion.equals("/procesos")) ? "es" : "en";
        rutaTraducida = (idioma.equals("es")) ? "/processes" : "/procesos";
        break;
      case "/historia": case "/history":
        rutaDestino = "/historia.jsp";
        idioma = (informacion.equals("/historia")) ? "es" : "en";
        rutaTraducida = (idioma.equals("es")) ? "/history" : "/historia";
        break;
      case "/contacto": case "/contact":
        rutaDestino = "/contacto.jsp";
        idioma = (informacion.equals("/contacto")) ? "es" : "en";
        rutaTraducida = (idioma.equals("es")) ? "/contact" : "/contacto";
        break;
      default:
        System.out.println("Error: " + informacion);
        respuesta.sendError(HttpServletResponse.SC_NOT_FOUND);
        return;
    }

    peticion.setAttribute("ruta", informacion);
    peticion.setAttribute("idioma", idioma);
    peticion.setAttribute("rutaTraducida", rutaTraducida);
    RequestDispatcher vista = peticion.getRequestDispatcher("WEB-INF" + rutaDestino);
    vista.forward(peticion, respuesta);
  }

}
