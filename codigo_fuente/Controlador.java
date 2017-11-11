
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest peticion, HttpServletResponse respuesta)
      throws ServletException, IOException {

    String informacion = peticion.getServletPath();
    System.out.println(informacion);
    System.out.println(peticion.getPathInfo());
    informacion = (informacion == null) ? "/inicio" : informacion;

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
