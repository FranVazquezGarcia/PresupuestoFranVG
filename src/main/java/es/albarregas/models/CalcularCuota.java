/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.models;

import es.albarregas.beans.ContenidoBean;
import es.albarregas.beans.EdificioBean;

/**
 *
 * @author fjvaz
 */
public class CalcularCuota {
    public double calculosEdificio(EdificioBean miEdificio){
        double cuotaBasica=miEdificio.getValor()*0.005;
        double prima=0;
        switch (miEdificio.getTipo()){
            case "piso":
                prima=cuotaBasica*0.95;
                break;
            case "casa":
                prima=cuotaBasica*1.00;
                break;
            case "adosado": 
                prima=cuotaBasica*1.05;
                break;
            case "duplex":
                prima=cuotaBasica*1.10;
                break;
            case "chalet":
                prima=cuotaBasica*1.20;
                break;
        }
        prima+=(cuotaBasica/100)*miEdificio.getNumHabitaciones();
        switch(miEdificio.getFecha()){
            case 1949:
                prima+=prima*0.09;
                break;
            case 1950:
                prima+=prima*0.06;
                break;
            case 1991:
                prima+=prima*0.04;
                break;
            case 2006:
                prima+=prima*0.02;
                break;
            case 2016:
                prima+=prima*0.01;
                break;
        }
        if(miEdificio.getMaterial().equals("madera")){
        prima+=0.1;
    }
        return prima;
    }
    
    
    
    
    public double calculosContenido(ContenidoBean miContenido){
        double prima=miContenido.getCantidad()*0.008;
        if(miContenido.isAccidentes()){
            prima*=1.25;
        }
        if(miContenido.getFranquicia().endsWith("500")){
            prima-=0.1;
        }else if(miContenido.getFranquicia().equals("1000")){
            prima-=0.2;
        }
        return prima;    
    }
}
