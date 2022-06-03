<%-- 
    Document   : listar
    Created on : 05-31-2022, 06:42:31 PM
    Author     : Jonat
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        <div>
            <h1>Personas</h1>
            <a href="Controlador?accion=add">Agregar Nueva Persona</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>DUI</th>
                        <th>Apellidos</th>
                        <th>Nombres</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao=new PersonaDAO();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= per.getDui()%></td>
                        <td><%= per.getApellidos()%></td>
                        <td><%= per.getNombres()%></td>
                        <td>
                            <a href="Controlador?accion=edit&id=<%= per.getId()%>">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
