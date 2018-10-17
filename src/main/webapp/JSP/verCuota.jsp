<%-- 
    Document   : verCuota
    Created on : 17-oct-2018, 0:57:54
    Author     : fjvaz
--%>
<%@page import="es.albarregas.beans.ContenidoBean"%>
<%@page import="es.albarregas.beans.EdificioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Obtenemos la sesion, y el objeto de edificio, asi podremos mostrar los valores de sus atributos
HttpSession miSesion = request.getSession();
EdificioBean miEdificio=(EdificioBean)miSesion.getAttribute("edificio");
//Obtenemos el objeto miContenido pasado por parametro desde el servlet contenido
ContenidoBean miContenido=(ContenidoBean) request.getAttribute("contenido");
double sumaTotal=0;

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="CSS/estilos.css" />
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"> 
        <title>Ver Cuota</title>
    </head>
    <body>
        <h1>Seguros</h1>
        <h2>Ha realizado su seguro con éxito</h2>
        <%
            if(miEdificio!=null){
            sumaTotal+=miEdificio.getPrima();%>
            <div class="titulo">Seguro de edificio:</div>
            <div>Valor estimado: <%=miEdificio.getValor()%></div>
            <div>Tipo de vivienda: <%=miEdificio.getTipo()%></div>
            <div>Número de habitaciones: <%=miEdificio.getNumHabitaciones()%></div>
            <div>Fecha de construcción: <%=miEdificio.getFecha()%></div>
            <div>Material: <%=miEdificio.getMaterial()%></div>
            <br>
            <%}%>
            
            
            <%
            if(miContenido!=null){
            sumaTotal+=miContenido.getPrima();
            %>
            <div class="titulo">Seguro de contenido:</div>
            <div>Daños accidentales: <%=miContenido.isAccidentes()==true? "Si" : "No"%></div>
            <div>Cantidad que va a segurar: <%=miContenido.getCantidad()%></div>
            <div>Franquicia: <%=miContenido.getFranquicia()%></div>
            <br>
            <%}%>
            
            <h3>El precio total de su seguro es: <%=Math.round(sumaTotal*100.0)/100.0%>€</h3>  
        <%
            //Debemos eliminar la sesion, si no, mostrara una sumaTotal incorrecta
            miSesion.invalidate();
        %>
        
        <input type="button" name="Submit" id="button" value="Volver al inicio" onclick="location.href='<%=request.getContextPath()%>'">
    </body>
</html>
