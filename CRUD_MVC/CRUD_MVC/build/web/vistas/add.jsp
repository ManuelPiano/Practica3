<%-- 
    Document   : add
    Created on : 05-31-2022, 06:41:54 PM
    Author     : Jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Agregar Persona</h1>
        <form action="Controlador">
            DUI:<br>
            <input type="text" name="txtDui" value="" /><br>
            Apellidos:<br>
            <input type="text" name="txtApellidos" value="" /><br>
            Nombres:<br>
            <input type="text" name="txtNombres" value="" /><br>
            <input type="submit" name="accion" value="Agregar" />
        </form>
    </body>
</html>
