/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

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

    public boolean login(String name, String password) {
        String sql = "SELECT * FROM personas where contrasenna='" + password + "'and nombre='" + name + "';";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }

    public String insertar(int id) {
        if (verificar(id) == false) {
            String sql = "INSERT INTO personas VALUES (" + id + ", '" + getTipoIdentificacion() + "', '" + getNombre() + "', '" + getApellido()
                    + "', '" + getDireccion() + "', '" + getTelefono() + "', '" + getCorreo() + "', '" + getContrasena() + "', '" + getRol() + "')";
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
}