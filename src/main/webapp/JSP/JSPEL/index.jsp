<%-- 
    Document   : index
    Created on : 15-oct-2018, 17:36:56
    Author     : fjvaz
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <c:url value ="/Eleccion" var="controlador"/>
    <c:url value ="/CSS/estilos.css" var="css"/>
    
    <head>
        <title>Seguro</title>
        <link rel="stylesheet" type="text/css" media="screen" href="${css}" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        
        
        
        <h1>Seguros</h1>
        <form action="${controlador}" method="post">
        <h2>Elije algún seguro:</h2>
        <h3>Marca la casilla del seguro que desea, seguro de edificios o de contenido, puede elegir ambos.</h3>
        <p>¿Que tipo de seguro necesitas?</p>
        <label for="edificios">Seguro de edificios: </label>
        <input type="checkbox" name="edificios" value="edificios" checked="">
        <br>
        <label for="contenido">Seguro de contenido: </label>
        <input type="checkbox" name="contenido" value="contenido"checked="">
        <br>
        <input type="submit" value="Enviar" name="Enviar">
        <input type="hidden" value="JSPEL" name="sintaxis">
        </form>
        
    </body>
</html>
