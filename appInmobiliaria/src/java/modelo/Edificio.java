/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author usuario
 */
public class Edificio extends InmuebleV2 {
    
    private int numPisos;
    private int numParqueaderos;
    private String codigoBarrio;

    public Edificio() {
    }

    public Edificio(int numPisos, int numParqueaderos, String codigoBarrio) {
        this.numPisos = numPisos;
        this.numParqueaderos = numParqueaderos;
        this.codigoBarrio = codigoBarrio;
    }

    /**
     * @return the numPisos
     */
    public int getNumPisos() {
        return numPisos;
    }

    /**
     * @param numPisos the numPisos to set
     */
    public void setNumPisos(int numPisos) {
        this.numPisos = numPisos;
    }

    /**
     * @return the numParqueaderos
     */
    public int getNumParqueaderos() {
        return numParqueaderos;
    }

    /**
     * @param numParqueaderos the numParqueaderos to set
     */
    public void setNumParqueaderos(int numParqueaderos) {
        this.numParqueaderos = numParqueaderos;
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
    
}