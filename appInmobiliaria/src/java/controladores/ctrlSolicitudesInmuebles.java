/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.util.LinkedList;
import modelo.clsConexionBD;

/**
 *
 * @author Camilo
 */
public class ctrlSolicitudesInmuebles {

    clsConexionBD conexion;

    public ctrlSolicitudesInmuebles() {
        conexion = new clsConexionBD();
    }

    public boolean eliminarInmueblesComercial(LinkedList<String> ids) {
        if (ids != null) {
            String query;
            for (int i = 0; i < ids.size(); i++) {
                query = "DELETE FROM comerciales WHERE codigo ='" + ids.get(i) + "';";
                conexion.actualizar(query);
            }
            return true;
        }
        return false;
    }

    public boolean validarInmuebleComercial(LinkedList<String> ids) {
        if (ids != null) {
            String query;
            for (int i = 0; i < ids.size(); i++) {
                query = "UPDATE comerciales set validacion = 'TRUE' WHERE codigo ='" + ids.get(i) + "';";
                conexion.actualizar(query);
            }
            return true;
        }
        return false;
    }
    
       public boolean eliminarInmueblesResidencial(LinkedList<String> ids) {
        if (ids != null) {
            String query;
            for (int i = 0; i < ids.size(); i++) {
                query = "DELETE FROM residenciales WHERE codigo ='" + ids.get(i) + "';";
                conexion.actualizar(query);
            }
            return true;
        }
        return false;
    }
       
        public boolean validarInmuebleResidencial(LinkedList<String> ids) {
        if (ids != null) {
            String query;
            for (int i = 0; i < ids.size(); i++) {
                query = "UPDATE residenciales set validacion = 'TRUE' WHERE codigo ='" + ids.get(i) + "';";
                conexion.actualizar(query);
            }
            return true;
        }
        return false;
    }
}
