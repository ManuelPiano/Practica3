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
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>CONSULTA</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
        <img src="https://www.itca.edu.sv/wp-content/themes/elaniin-itca/images/logoColor.png" alt="Logo" style="width:200px;" class="rounded-pill"><!-- logo itca -->
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
          <li class="nav-item">
          <a class="nav-link" href="index.jsp">HOME</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="Controlador?accion=add">Agregar Nueva Persona</a>
        </li>   
      </ul>
    </div>
  </div>
</nav>
        <div class="container mt-3">
            <h1>Personas</h1>
            <table class="table table-dark table-striped">
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
                            <div class="list-group list-group-horizontal">
                            <a href="Controlador?accion=edit&id=<%= per.getId()%>" class="list-group-item" data-bs-toggle="tooltip" data-bs-placement="top" title="Para editar un registro presione aqui">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>" class="list-group-item" data-bs-toggle="tooltip" data-bs-placement="top" title="Para eliminar un registro presione aqui">Eliminar</a>
                            </div>
                            </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
    HECHO POR
  </button>
        </div>
                <!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">INTEGRANTES</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
          Manuel Alfredo Alvarado Rivera<br>
          Jennifer Guadalupe Surio Ramírez<br>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
    </body>
</html>
