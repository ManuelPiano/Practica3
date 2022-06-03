<%-- 
    Document   : edit
    Created on : 05-31-2022, 06:42:11 PM
    Author     : Jonat
--%>

<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            PersonaDAO dao = new PersonaDAO();
            int id=Integer.parseInt((String)request.getAttribute("idper"));
            Persona p=(Persona)dao.list(id);
        %>
        <h1>Modificar Persona</h1>
        <form action="Controlador">
            DUI:<br>
            <input type="text" name="txtDui" value="<%= p.getDui()%>" /><br>
            Apellidos:<br>
            <input type="text" name="txtApellidos" value="<%= p.getApellidos() %>" /><br>
            Nombres:<br>
            <input type="text" name="txtNombres" value="<%= p.getNombres() %>" /><br>
            <input type="hidden" name="txtId" value="<%= p.getId() %>"><br>
            <input type="submit" name="accion" value="Actualizar" /><br>
            <a href="Controlador?accion=listar">Regresar</a>
        </form>
    </body>
</html>
