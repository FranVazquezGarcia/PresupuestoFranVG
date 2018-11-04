<%-- 
    Document   : verCuota
    Created on : 17-oct-2018, 0:57:54
    Author     : fjvaz
--%>


<%@page import="es.albarregas.beans.ContenidoBean"%>
<%@page import="es.albarregas.beans.EdificioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>





<!DOCTYPE html>
<html>
    <head>
    <c:url value ="/CSS/estilos.css" var="css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" media="screen" href="${css}" />
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"> 
    <title>Ver Cuota</title>
</head>
<body>
    <h1>Seguros</h1>
    <h2>Ha realizado su seguro con éxito</h2>       

<c:if test="${sessionScope.edificio !=  null}">

    <div class="titulo">Seguro de edificio:</div>
    <div>Valor estimado:   <fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${sessionScope.edificio.valor}"/>€</div>
    <div>Tipo de vivienda: <c:out value="${sessionScope.edificio.tipo}"/></div>
    <div>Número de habitaciones: <c:out value="${sessionScope.edificio.numHabitaciones}"/></div>
    <div>Fecha de construcción: <c:out value="${sessionScope.edificio.fecha}"/></div>
    <div>Material: <c:out value="${sessionScope.edificio.material}"/></div>
    <div>Precio del seguro de edificio: <fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${sessionScope.edificio.prima}"/>€</div>
    <br>
</c:if>


<!--Si queremos que en la francuicia muestre Si o no, en lugar de true o false, debemos usar la condicion choose -->
<c:if test="${requestScope.contenido !=  null}">
    <div class="titulo">Seguro de contenido:</div>
    <div>Daños accidentales: 
        <c:choose>
            <c:when  test="${requestScope.contenido.accidentes  ==  false}"  >
                No</c:when>
            <c:otherwise>Si</c:otherwise>
        </c:choose></div>
    <div>Cantidad que va a segurar: <fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${requestScope.contenido.cantidad}"/>€</div>
    
    <div>Franquicia: 
      <c:choose>
            <c:when  test="${requestScope.contenido.franquicia  ==  0}"  >
                Ninguna</c:when>
            <c:otherwise><fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${requestScope.contenido.franquicia}"/>€</c:otherwise>
        </c:choose></div>
    <div>Precio del seguro de contenido: <fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${requestScope.contenido.prima}"/>€</div>
    <br>
</c:if>

<h3>El precio total de su seguro es: <fmt:formatNumber  minFractionDigits="2" maxFractionDigits="2" value="${sessionScope.edificio.prima + requestScope.contenido.prima}"/>€</h3>  
<%
    //Debemos eliminar la sesion, si no, mostrara una sumaTotal incorrecta
    HttpSession miSesion = request.getSession();
    miSesion.invalidate();
%>

<c:url value ="/" var="volver"/>
<input type="button" name="Submit" id="button" value="Volver al inicio" onclick="location.href = '${volver}'">
</body>
</html>
