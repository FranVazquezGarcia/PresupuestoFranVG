<%-- 
    Document   : index
    Created on : 15-oct-2018, 17:36:56
    Author     : fjvaz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Seguro</title>
        <link rel="stylesheet" type="text/css" media="screen" href="CSS/estilos.css" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Seguros</h1>
        <form action="Eleccion" method="post">
        <h2>Elije algún seguro:</h2>
        <h3>Marca la casilla del seguro que desea, seguro de edificios o de contenido, puede elegir ambos.</h3>
        <p>¿Que tipo de seguro necesitas?</p>
        <label for="edificios">Seguro de edificios: </label>
        <input type="checkbox" name="edificios" value="edificios">
        <br>
        <label for="contenido">Seguro de contenido: </label>
        <input type="checkbox" name="contenido" value="contenido">
        <br>
        <input type="submit" value="Enviar" name="Enviar">
        </form>
        
    </body>
</html>
