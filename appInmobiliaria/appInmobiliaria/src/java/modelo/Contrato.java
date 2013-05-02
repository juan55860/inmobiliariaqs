/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author hw4
 */
public class Contrato {
    
    private int codigo;
    private int codArrendador;
    private int codArrendatario;
    private String codInmueble;
    private String descripcion;
    private String fecha;
    private int valor;
    private int comision;
    private int duracion;

    
    

    public Contrato() {
    }
    
    

    public Contrato(int codigo, int codArrendador, int codArrendatario, String codInmueble, String descripcion, String fecha, int valor, int comision, int duracion) {
        this.codigo = codigo;
        this.codArrendador = codArrendador;
        this.codArrendatario = codArrendatario;
        this.codInmueble = codInmueble;
        this.descripcion = descripcion;
        this.fecha = fecha;
        this.valor = valor;
        this.comision = comision;
        this.duracion = duracion;
    }
    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the codArrendador
     */
    public int getCodArrendador() {
        return codArrendador;
    }

    /**
     * @param codArrendador the codArrendador to set
     */
    public void setCodArrendador(int codArrendador) {
        this.codArrendador = codArrendador;
    }

    /**
     * @return the codArrendatario
     */
    public int getCodArrendatario() {
        return codArrendatario;
    }

    /**
     * @param codArrendatario the codArrendatario to set
     */
    public void setCodArrendatario(int codArrendatario) {
        this.codArrendatario = codArrendatario;
    }

    /**
     * @return the codInmueble
     */
    public String getCodInmueble() {
        return codInmueble;
    }

    /**
     * @param codInmueble the codInmueble to set
     */
    public void setCodInmueble(String codInmueble) {
        this.codInmueble = codInmueble;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the valor
     */
    public int getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(int valor) {
        this.valor = valor;
    }

    /**
     * @return the comision
     */
    public int getComision() {
        return comision;
    }

    /**
     * @param comision the comision to set
     */
    public void setComision(int comision) {
        this.comision = comision;
    }

    /**
     * @return the duracion
     */
    public int getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    

   
    
}
