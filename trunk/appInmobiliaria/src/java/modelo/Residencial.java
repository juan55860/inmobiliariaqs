/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author usuario
 */
public class Residencial extends InmuebleV2 {
    
    private int codigoInmueble;
    private String tipo; //CASA, APARTAMENTO, APARTAESTUDIO
    private int habitaciones;
    private int banos;
    private int numeroPisos;
    private String codigoBarrio;
    private boolean parqueadero;

    public Residencial() {
    }

    public Residencial(String tipo, int habitaciones, int banos, int numeroPisos, String codigoBarrio, boolean parqueadero) {
        this.tipo = tipo;
        this.habitaciones = habitaciones;
        this.banos = banos;
        this.numeroPisos = numeroPisos;
        this.codigoBarrio = codigoBarrio;
        this.parqueadero = parqueadero;
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
    public String getCodigoBarrio() {
        return codigoBarrio;
    }

    /**
     * @param codigoBarrio the codigoBarrio to set
     */
    public void setCodigoBarrio(String codigoBarrio) {
        this.codigoBarrio = codigoBarrio;
    }

    /**
     * @return the parqueadero
     */
    public boolean getParqueadero() {
        return parqueadero;
    }

    /**
     * @param parqueadero the parqueadero to set
     */
    public void setParqueadero(boolean parqueadero) {
        this.parqueadero = parqueadero;
    }
       
}