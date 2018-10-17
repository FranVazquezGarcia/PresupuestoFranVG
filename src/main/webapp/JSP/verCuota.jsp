<%-- 
    Document   : verCuota
    Created on : 17-oct-2018, 0:57:54
    Author     : fjvaz
--%>
<%@page import="es.albarregas.beans.ContenidoBean"%>
<%@page import="es.albarregas.beans.EdificioBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//Obtenemos la sesion, y los obejtos de edificio y contenido, asi podremos mostrar los valores de sus atributos
HttpSession miSesion = request.getSession();
EdificioBean miEdificio=(EdificioBean)miSesion.getAttribute("edificio");
ContenidoBean miContenido=(ContenidoBean)miSesion.getAttribute("contenido");
double sumaTotal;
if (miEdificio!=null && miContenido!=null){
    sumaTotal=miEdificio.getPrima()+miContenido.getPrima();
}else if(miEdificio!=null){
    sumaTotal=miEdificio.getPrima();
}else{
    sumaTotal=miContenido.getPrima();
}
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
        <h3>El precio total de su seguro es: <%=sumaTotal%></h3>  
        <p>Los datos de su seguro son: </p>
        
        <%
            //Debemos eliminar la sesion, si no, mostrara una sumaTotal incorrecta
            miSesion.invalidate();
        %>
        
        
        <input type="button" name="Submit" id="button" value="Volver al inicio" onclick="location.href='<%=request.getContextPath()%>'">
    </body>
</html>
