/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Camilo
 */
public class Inmueble {

    private int codigo;
    private String precio;
    private String barrio;
    private String direccion;
    private String estado;
    private String foto;
    private int longitud;
    private String tipoInmueble;
    private Persona persona;
    private int numbanios;
    private int numHabitaciones;

    public Inmueble(String precio, String barrio, String direccion, String estado, int longitud, String tipoInmueble, Persona persona, int banios, int habitaciones) {
        this.precio = precio;
        this.barrio = barrio;
        this.direccion = direccion;
        this.estado = estado;
        this.longitud = longitud;
        this.tipoInmueble = tipoInmueble;
        this.persona = persona;
        this.numHabitaciones = habitaciones;
        this.numbanios = banios;

    }

    {
    }

    public Inmueble(int codigo, String precio, String barrio, String direccion, String estado, String foto, int longitud, String tipoInmueble, Persona persona, int numbanios, int numHabitaciones) {
        this.codigo = codigo;
        this.precio = precio;
        this.barrio = barrio;
        this.direccion = direccion;
        this.estado = estado;
        this.foto = foto;
        this.longitud = longitud;
        this.tipoInmueble = tipoInmueble;
        this.persona = persona;
        this.numbanios = numbanios;
        this.numHabitaciones = numHabitaciones;
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
     * @return the barrio
     */
    public String getBarrio() {
        return barrio;
    }

    /**
     * @param barrio the barrio to set
     */
    public void setBarrio(String barrio) {
        this.barrio = barrio;
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
     * @return the foto
     */
    public String getFoto() {
        return foto;
    }

    /**
     * @param foto the foto to set
     */
    public void setFoto(String foto) {
        this.foto = foto;
    }

    /**
     * @return the longitud
     */
    public int getLongitud() {
        return longitud;
    }

    /**
     * @return the tipoInmueble
     */
    public String getTipoInmueble() {
        return tipoInmueble;
    }

    /**
     * @param tipoInmueble the tipoInmueble to set
     */
    public void setTipoInmueble(String tipoInmueble) {
        this.tipoInmueble = tipoInmueble;
    }

    /**
     * @return the persona
     */
    public Persona getPersona() {
        return persona;
    }

    /**
     * @param persona the persona to set
     */
    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    /**
     * @return the numbanios
     */
    public int getNumbanios() {
        return numbanios;
    }

    /**
     * @param numbanios the numbanios to set
     */
    public void setNumbanios(int numbanios) {
        this.numbanios = numbanios;
    }

    /**
     * @return the numHabitaciones
     */
    public int getNumHabitaciones() {
        return numHabitaciones;
    }

    /**
     * @param numHabitaciones the numHabitaciones to set
     */
    public void setNumHabitaciones(int numHabitaciones) {
        this.numHabitaciones = numHabitaciones;
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
     * @param longitud the longitud to set
     */
    public void setLongitud(int longitud) {
        this.longitud = longitud;
    }
}
