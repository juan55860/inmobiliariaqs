/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author usuario
 */
public class InmuebleV2 {
    
    private int codigo;
    private String precio;
    private String direccion;
    private String estrato;
    private int codPropietario;
    private int prioridad;
    private int area;
    private String descripcion;
    private String estado; //ARRENDAMIENTO o VENTA
    private Date fechaDeRegistro;

    public InmuebleV2() {
    }

    public InmuebleV2(int codigo, String precio, String direccion, String estrato, int codPropietario, int prioridad, int area, String descripcion, String estado, Date fechaDeRegistro) {
        this.codigo = codigo;
        this.precio = precio;
        this.direccion = direccion;
        this.estrato = estrato;
        this.codPropietario = codPropietario;
        this.prioridad = prioridad;
        this.area = area;
        this.descripcion = descripcion;
        this.estado = estado;
        this.fechaDeRegistro = fechaDeRegistro;
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
     * @return the precio
     */
    public String getPrecio() {
        return precio;
    }

    /**
     * @param precio the precio to set
     */
    public void setPrecio(String precio) {
        this.precio = precio;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the estrato
     */
    public String getEstrato() {
        return estrato;
    }

    /**
     * @param estrato the estrato to set
     */
    public void setEstrato(String estrato) {
        this.estrato = estrato;
    }

    /**
     * @return the codPropietario
     */
    public int getCodPropietario() {
        return codPropietario;
    }

    /**
     * @param codPropietario the codPropietario to set
     */
    public void setCodPropietario(int codPropietario) {
        this.codPropietario = codPropietario;
    }

    /**
     * @return the prioridad
     */
    public int getPrioridad() {
        return prioridad;
    }

    /**
     * @param prioridad the prioridad to set
     */
    public void setPrioridad(int prioridad) {
        this.prioridad = prioridad;
    }

    /**
     * @return the area
     */
    public int getArea() {
        return area;
    }

    /**
     * @param area the area to set
     */
    public void setArea(int area) {
        this.area = area;
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
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the fechaDeRegistro
     */
    public Date getFechaDeRegistro() {
        return fechaDeRegistro;
    }

    /**
     * @param fechaDeRegistro the fechaDeRegistro to set
     */
    public void setFechaDeRegistro(Date fechaDeRegistro) {
        this.fechaDeRegistro = fechaDeRegistro;
    }
    
}