/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Persona;
import modelo.clsConexionBD;

/**
 *
 * @author camilo
 */
public class ctrlIngresarPersona extends Persona {

    clsConexionBD conexion;

    public ctrlIngresarPersona() {
        conexion = new clsConexionBD();
    }

    public boolean verificar(int key) {
        String sql = "SELECT * FROM personas where identificacion=" + key + ";";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }
    public boolean eliminar(String key) {
        String sql = "delete FROM personas where nombre='" + key + "';";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }
    
    public boolean actualizar(String nombre, String direccion, String telefono,String correo, String contrasena) {
        String sql = "UPDATE personas  SET direccion ='" + direccion + "', telefono='" + telefono + "', correo='" + correo + "', contrasenna='" + contrasena   + 
                "' where nombre='"+nombre+"';";
        if (conexion.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }
    
    public boolean actualizar(modelo.Persona p) {
        String sql = "UPDATE personas  SET nombre ='" + p.getNombre()+ "', apellido='" + p.getApellido() + "', telefono='" + p.getTelefono() + "', correo='" + p.getCorreo()+ "', identificacion='" + p.getIdentificacion()+ "', tipo_identificacion='" + p.getTipoIdentificacion()+ "', rol='" + p.getRol() + "', contrasenna='" + p.getContrasena()   + 
                "' where nombre='"+p.getNombre()+"';";
        if (conexion.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }

    public boolean login(String name, String password, String rol) {
        String sql = "SELECT * FROM personas where contrasenna='" + password + "'and nombre='" + name+ "'and rol='" + rol + "';";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }
    
    public boolean login(String name, String password) {
        String sql = "SELECT * FROM personas where contrasenna='" + password + "'and nombre='" + name+ "';";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }

    public String insertar(int id) {
        if (verificar(id) == false) {
            String sql = "INSERT INTO personas VALUES (" + id + ",'" + getTipoIdentificacion() + "','" + getNombre() + "','" + getApellido() + "','" + getDireccion()
                + "','" + getTelefono() + "','" + getCorreo() + "','" + getContrasena() + "','" + getRol() + "','" + getFechaDeRegistro() +"');";
            if (conexion.actualizar(sql) == 1) {
                return "";
            }
        }
        return "No inserto";
    }

    public boolean esNumero(String cadena) {
        try {
            Integer.parseInt(cadena);
            return true;
        } catch (NumberFormatException nfe) {
            return false;
        }
    }
    
    public ResultSet listbyNit(){
        String resultado="";
        ResultSet rs = null;
        try {
            //
            String sql = "SELECT nombre, apellido,identificacion,direccion,telefono,correo,contrasenna,fecha_registro from personas";
            rs = conexion.consultar(sql);
            if (rs.next()) {
                resultado = "Nombre: " + rs.getString(1) + "<br> Apellido: " + rs.getString(2)+ "<br> identificacion: " + rs.getString(3)
                        + "<br> direccion: " + rs.getString(4)+ "<br> telefono: " + rs.getString(5)+ "<br> correo: " + rs.getString(6)
                        + "<br> constrasena: " + rs.getString(7)+ "<br> registro: " + rs.getString(8);
            }
        } catch (SQLException ex) {
            Logger.getLogger(modelo.Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public ResultSet listbyNit(String nombre){
        String resultado="";
        ResultSet rs = null;
        try {
            //
            String sql = "SELECT nombre, apellido,identificacion,direccion,telefono,correo,contrasenna,fecha_registro from personas where nombre='"+nombre+"';";
            rs = conexion.consultar(sql);
            if (rs.next()) {
                resultado = "Nombre: " + rs.getString(1) + "<br> Apellido: " + rs.getString(2)+ "<br> identificacion: " + rs.getString(3)
                        + "<br> direccion: " + rs.getString(4)+ "<br> telefono: " + rs.getString(5)+ "<br> correo: " + rs.getString(6)
                        + "<br> contrasenna: " + rs.getString(7)+ "<br> registro: " + rs.getString(8);
            }
        } catch (SQLException ex) {
            Logger.getLogger(modelo.Persona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}