<%-- 
    Document   : edificio
    Created on : 16-oct-2018, 0:54:56
    Author     : fjvaz
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
             <c:url value ="/Edificio" var="controlador"/>
    <c:url value ="/CSS/estilos.css" var="css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="${css}" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <title>Seguro de edificios</title>
    </head>
    <body>

        
        <h1>Seguros</h1> 
        <form action="${controlador}" method="post">
        <fieldset>
        <h2>Seguro de edificios</h2>
        <h3>Introduce la información necesaria acerca de su vivienda:</h3>
        <label for="tipo">Tipo de edificio: </label>
        <select name="tipo">
            <option value="piso" selected="">Piso</option>
            <option value="casa">Casa</option>
            <option value="adosado">Adosado</option>
            <option value="duplex">Duplex</option>
            <option value="chalet">Chalet</option>
        </select>
        <br><br>
        <label for="numHabitaciones">Número de habitaciones: </label>
        <select name="numHabitaciones">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3" selected="">3</option>
            <option value="4">4</option>
            <option value="5">5 o más</option>
        </select>
        <br><br>
        <label for="fecha">Fecha de construcción: </label>
        <select name="fecha">
            <option value="1949">Antes de 1950</option>
            <option value="1950" selected="">Entre 1950 y 1990</option>
            <option value="1991">Entre 1991 y 2005</option>
            <option value="2006">Entre 2006 y 2015</option>
            <option value="2016">Después de 2015</option>
        </select>
        <br><br>
        <label for="material">Tipo de construcción: </label>
        <input type="radio" name="material" value="madera" checked="">Madera
        <input type="radio" name="material" value="hormigon">Hormigón
        </select>
        <br><br>
        <label for="valor">Valor estimado en el mercado: </label>
        <select name="valor">
            <option value="25000">Menos de 50000</option>
            <option value="50001" selected="">Entre 50001 y 80000</option>
            <option value="80001">Entre 80001 y 100000</option>
            <option value="100001">Entre 100001 y 150000</option>
            <option value="125000">Más de 150000</option>
        </select>
        <br><br>
        <input type="submit" value="Enviar" name="Enviar">
        </fieldset>
        </form>
        
    </body>
</html>
