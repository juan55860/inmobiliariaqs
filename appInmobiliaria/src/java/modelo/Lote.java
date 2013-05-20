/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author usuario
 */
public class Lote extends InmuebleV2 {
    
    private int codigoInmueble;
    private String tipo; //CONSTRUCCION, CULTIVO, GANADERIA

    public Lote() {
    }

    public Lote(String tipo) {
        this.tipo = tipo;
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
    
    
}
