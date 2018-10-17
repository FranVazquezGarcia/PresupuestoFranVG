/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.beans;

import java.io.Serializable;

/**
 *
 * @author fjvaz
 */
public class ContenidoBean implements Serializable{
    private boolean accidentes; 
    private double cantidad;
    private String franquicia;
    private double prima;

    public double getPrima() {
        return prima;
    }

    public void setPrima(double prima) {
        this.prima = prima;
    }
    
    public boolean isAccidentes() {
        return accidentes;
    }

    public void setAccidentes(boolean accidentes) {
        this.accidentes = accidentes;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(double cantidad) {
        this.cantidad = cantidad;
    }

    public String getFranquicia() {
        return franquicia;
    }

    public void setFranquicia(String franquicia) {
        this.franquicia = franquicia;
    }


    
}
