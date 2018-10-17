<%-- 
    Document   : contenido
    Created on : 16-oct-2018, 0:55:09
    Author     : fjvaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="CSS/estilos.css" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Seguros</h1>
        <form action="Contenido" method="post">
        <fieldset>
        <h2>Seguro de contenidos</h2>
        <h3>Introduce la información necesaria acerca de su contenido:</h3>
        <label for="accidentes">Cubrir daños accidentales: </label>
        <input type="checkbox" name="accidentes" value="accidentes">
        <br><br>
        <label for="cantidad">Cantidad que requiere asegurar: </label>
        <select name="cantidad">
            <option value="10000">10000</option>
            <option value="20000">20000</option>
            <option value="30000">30000</option>
            <option value="50000">50000</option>
            <option value="100000">100000</option>
        </select>
        <br><br>
        <label for="franquicia">Franquicia: </label>
        <input type="radio" name="franquicia" value="ninguna" checked="">ninguna
        <input type="radio" name="franquicia" value="500">500
        <input type="radio" name="franquicia" value="1000">1000
        <br><br>
        <input type="submit" value="Enviar" name="Enviar">
        </fieldset>
        </form>
    </body>
</html>
