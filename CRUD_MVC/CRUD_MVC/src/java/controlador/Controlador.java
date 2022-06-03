
package controlador;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import modelo.Persona;
import modeloDAO.PersonaDAO;
/**
 *
 * @author Jonat
 */
public class Controlador extends HttpServlet {

    String listar="vistas/listar.jsp";
    String add="vistas/add.jsp";
    String edit="vistas/edit.jsp";
    Persona p=new Persona();
    PersonaDAO dao=new PersonaDAO();
    int id;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String  acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if (action.equalsIgnoreCase("Agregar")){
            String dui=request.getParameter("txtDui");
            String apellidos=request.getParameter("txtApellidos");
            String nombres=request.getParameter("txtNombres");
            p.setDui(dui);
            p.setApellidos(apellidos);
            p.setNombres(nombres);
            dao.add(p);
            acceso=listar;
            
            
        }
        else if(action.equalsIgnoreCase("edit")){
          request.setAttribute("idper", request.getParameter("id"));
          acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtId"));
           String dui=request.getParameter("txtDui");
            String apellidos=request.getParameter("txtApellidos");
            String nombres=request.getParameter("txtNombres");
            p.setId(id);
            p.setDui(dui);
            p.setApellidos(apellidos);
            p.setNombres(nombres); 
            dao.edit(p);
            acceso=listar;
        }
        else if (action.equalsIgnoreCase("eliminar")){
             id=Integer.parseInt(request.getParameter("id"));
             p.setId(id);
             dao.eliminar(id);
             acceso=listar;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
