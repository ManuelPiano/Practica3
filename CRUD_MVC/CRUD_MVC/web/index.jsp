<%-- 
    Document   : index
    Created on : 05-31-2022, 06:40:09 PM
    Author     : Manuel Alvarado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>INICIO</title>
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
          <a class="nav-link" href="#">HOME</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="Controlador?accion=add">Agregar Nueva Persona</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
        <div class="container mt-3">
  <h2>Bienvenido</h2>
  <div class="mt-4 p-5 bg-secondary text-white rounded">
    <h1>Registra, Actualiza o elimina</h1> 
    <p>Bienvenido al sitio de registro de personas en el cual podras registrar tu nombre completo con tu DUI, de la misma manera podras observar los registros guardados en la base de datos que tambien puedes editar por si te equivocastes o tambien puedes eliminar el registro </p> 
  </div>
</div>
        <div class="container mt-3">
            <a href="Controlador?accion=listar">
            <img href="Controlador?accion=listar" class="img-fluid" src="https://static.wixstatic.com/media/b66570_df34c99b9b244330993559b3a659f6eb~mv2.gif" alt="New York" width="300" height="100">
       </a>
        <h3>CONSULTA DE PERSONAS</h3>
        </div>
    </body>
</html>
