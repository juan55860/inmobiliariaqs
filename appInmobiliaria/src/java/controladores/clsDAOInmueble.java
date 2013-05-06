/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.prioridad;


/**
 *
 * @author CarlaZuluaga
 */
public class clsDAOInmueble extends prioridad {
    
    modelo.clsConexionBD ConexionBD = new modelo.clsConexionBD();
    
     public boolean modificar() {
        String sql = "UPDATE tblinmueble SET prioridad='" + super.getPrioridad() +" where codigo=" + super.getCodigo() ;
        if (ConexionBD.actualizar(sql) == 1) {
            return true;
        }
        return false;
    }
    
}

