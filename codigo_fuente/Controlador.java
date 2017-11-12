
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

    peticion.setAttribute("idioma", "es");
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
    switch (informacion) {
      case "/inicio": case "/home":
        rutaDestino = "/index.jsp";
        break;
      case "/productos": case "/products":
        rutaDestino = "/productos.jsp";
        break;
      case "/procesos": case "/processes":
        rutaDestino = "/procesos.jsp";
        break;
      case "/historia": case "/history":
        rutaDestino = "/historia.jsp";
        break;
      case "/contacto": case "/contact":
        rutaDestino = "/contacto.jsp";
        break;
      default:
        System.out.println("Error: " + informacion);
        respuesta.sendError(HttpServletResponse.SC_NOT_FOUND);
        return;
    }

    peticion.setAttribute("ruta", informacion);
    RequestDispatcher vista = peticion.getRequestDispatcher("WEB-INF" + rutaDestino);
    vista.forward(peticion, respuesta);
  }

}
