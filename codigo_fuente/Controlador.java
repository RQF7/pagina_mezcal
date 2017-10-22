
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

public class Controlador extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest peticion, HttpServletResponse respuesta)
      throws ServletException, IOException {

    String informacion = peticion.getServletPath();
    informacion = (informacion == null) ? "/inicio" : informacion;

    String rutaDestino = "";
    switch (informacion) {
      case "/inicio":
        rutaDestino = "/index.jsp";
        break;
      case "/productos":
        rutaDestino = "/productos.jsp";
        break;
      case "/procesos":
        rutaDestino = "/procesos.jsp";
        break;
      case "/historia":
        rutaDestino = "/historia.jsp";
        break;
      case "/contacto":
        rutaDestino = "/contacto.jsp";
        break;
      default:
        respuesta.sendError(HttpServletResponse.SC_NOT_FOUND);
        return;
    }

    peticion.setAttribute("ruta", informacion);
    RequestDispatcher vista = peticion.getRequestDispatcher("WEB-INF" + rutaDestino);
    vista.forward(peticion, respuesta);
  }

}
