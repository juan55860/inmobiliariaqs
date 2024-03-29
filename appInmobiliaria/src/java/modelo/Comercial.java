/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author usuario
 */
public class Comercial extends InmuebleV2 {
    
    private int codigoInmueble;
    private String tipo; //LOCAL, OFICINA, CONSULTORIO, BODEGA, PARQUEADERO
    private int banos;
    private int numeroPisos;
    private String barrio;

    public Comercial() {
    }

    public Comercial(String tipo, int banos, int numeroPisos, String barrio) {
        this.tipo = tipo;
        this.banos = banos;
        this.numeroPisos = numeroPisos;
        this.barrio = barrio;
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
     * @return the banos
     */
    public int getBanos() {
        return banos;
    }

    /**
     * @param banos the banos to set
     */
    public void setBanos(int banos) {
        this.banos = banos;
    }

    /**
     * @return the numeroPisos
     */
    public int getNumeroPisos() {
        return numeroPisos;
    }

    /**
     * @param numeroPisos the numeroPisos to set
     */
    public void setNumeroPisos(int numeroPisos) {
        this.numeroPisos = numeroPisos;
    }

    /**
     * @return the codigoBarrio
     */
    public String getBarrio() {
        return barrio;
    }

    /**
     * @param codigoBarrio the codigoBarrio to set
     */
    public void setBarrio(String barrio) {
        this.barrio = barrio;
    }
    
}