/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author usuario
 */
public class Rural extends InmuebleV2 {
    
    private int codigoInmueble;
    private String tipo; //FINCA, CASA CAMPESTRE, CABAÑA
    private int piscina;
    private int bano;
    private int habitaciones;

    public Rural() {
    }

    public Rural(String tipo, int piscina, int bano, int habitaciones) {
        this.tipo = tipo;
        this.piscina = piscina;
        this.bano = bano;
        this.habitaciones = habitaciones;
    }

    /**
     * @return the codigoInmueble
     */
    public int getCodigoInmueble() {
        return codigoInmueble;
    }

    /**
     * @param codigoInmueble the codigoInmueble to set
     */
    public void setCodigoInmueble(int codigoInmueble) {
        this.codigoInmueble = codigoInmueble;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the piscina
     */
    public int getPiscina() {
        return piscina;
    }

    /**
     * @param piscina the piscina to set
     */
    public void setPiscina(int piscina) {
        this.piscina = piscina;
    }

    /**
     * @return the bano
     */
    public int getBano() {
        return bano;
    }

    /**
     * @param bano the bano to set
     */
    public void setBano(int bano) {
        this.bano = bano;
    }

    /**
     * @return the habitaciones
     */
    public int getHabitaciones() {
        return habitaciones;
    }

    /**
     * @param habitaciones the habitaciones to set
     */
    public void setHabitaciones(int habitaciones) {
        this.habitaciones = habitaciones;
    }
    
}