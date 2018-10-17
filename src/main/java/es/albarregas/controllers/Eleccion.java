/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controllers;

import es.albarregas.beans.EleccionBean;
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
@WebServlet(name = "Eleccion", urlPatterns = {"/Eleccion"})
public class Eleccion extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
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
        processRequest(request, response);
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
        //Creamos una sesion
        HttpSession miSesion = request.getSession(); 
        String url=new String();
        EleccionBean miEleccion= new EleccionBean();
        
        //Comprobamos que checks se han marcado y instanciamos una clase de EleccionBean a la que le establecemos unos valores segun los check marcados.
        //Segun los checks marcados se redirigira a una pagina u otra, si se marcan las 2, se ira primero al formulario del edificio.
            if(request.getParameter("edificios")!=null){
                miEleccion.setEdificio(true);
                url="JSP/edificio.jsp";
            }else{
                miEleccion.setEdificio(false);
            }
            if(request.getParameter("contenido")!=null){
                miEleccion.setContenido(true);
                if (url.equals("")){
                    url="JSP/contenido.jsp";
                }
            }else{
                miEleccion.setContenido(false);
            }
            //Guardamos en la sesion el objeto miEleccion, para luego en el controlador de edificio saber si hay que realizar el formulario de contenido o no.
            miSesion.setAttribute("eleccion", miEleccion);
        if (url.equals("")){
            url="index.jsp";
        }
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
    }//</editor-fold>

}
