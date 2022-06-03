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
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Actualizar Datos</title>
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
        
        <%
            PersonaDAO dao = new PersonaDAO();
            int id=Integer.parseInt((String)request.getAttribute("idper"));
            Persona p=(Persona)dao.list(id);
        %>
                <div class="container mt-3">

        <h1>Modificar Persona</h1>
        <form action="Controlador">
            <input type="text" class="form-control mt-3" name="txtDui" value="<%= p.getDui()%>" /><br>
            <input type="text" class="form-control mt-3" name="txtApellidos" value="<%= p.getApellidos() %>" /><br>
            <input type="text" class="form-control mt-3"name="txtNombres" value="<%= p.getNombres() %>" /><br>
            <input type="hidden" name="txtId" value="<%= p.getId() %>"><br>
            <button class="btn btn-primary" type="submit" name="accion" value="Actualizar">Actualizar</button><br>
            
        </form><br>
            <a href="Controlador?accion=listar" class="btn btn-secondary">Regresar</a>
                </div>
    </body>
</html>
