/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.beans.EdificioBean;
import es.albarregas.beans.EleccionBean;
import es.albarregas.models.CalcularCuota;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author fjvaz
 */
@WebServlet(name = "Edificio", urlPatterns = {"/Edificio"})
public class Edificio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url= new String();
        //Creamos un objeto de tipo edificio y le asignamos loa valores introducidos por el usuario
        EdificioBean miEdificio = new EdificioBean();
        
        miEdificio.setTipo(request.getParameter("tipo"));
        miEdificio.setNumHabitaciones(Integer.parseInt(request.getParameter("numHabitaciones")));
        miEdificio.setFecha(Integer.parseInt(request.getParameter("fecha")));
        miEdificio.setMaterial(request.getParameter("material"));
        miEdificio.setValor(Double.parseDouble(request.getParameter("valor")));
        //Creamos un objeto de CalcularCuota y obtenemos la prima mediante los calculos del metodo calculosEdificio definido en CalcularCuota
        CalcularCuota miCuota= new CalcularCuota(); 
        miEdificio.setPrima(miCuota.calculosEdificio(miEdificio));
        //Obtenemos el objeto miEleccion de la sesion para saber si hay que pedir los datos de contenidos o no
        HttpSession miSesion = request.getSession(); 
        EleccionBean miEleccion= new EleccionBean();
        miEleccion=(EleccionBean)miSesion.getAttribute("eleccion");
        //En el caso de que haya que pedir los datos de contenido se redirige al contenido.jsp y si no directamente a verCuota.jsp
        if(miEleccion.isContenido()){
            url="JSP/contenido.jsp";
        }else{
            url="JSP/verCuota.jsp";
        }
        //Guardamos el objeto miEdificio en la sesion para poder obtener los datos en la vista
        miSesion.setAttribute("edificio", miEdificio);
        request.getRequestDispatcher(url).forward(request,response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
