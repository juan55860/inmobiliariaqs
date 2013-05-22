/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.InmuebleV2;
import modelo.Solicitud;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarSolicitud extends Solicitud {

    clsConexionBD conexion;

    public ctrlIngresarSolicitud() {
        conexion = new clsConexionBD();
    }

    public StringBuffer consultarCodigo(String tabla) {
        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet rs = null;
            String sql = "SELECT codigo From " + tabla + " ORDER BY codigo DESC LIMIT 1;";
            rs = conexion.consultar(sql);
            if (rs.next()) {
                sb.append(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(InmuebleV2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sb;
    }

    public String insertar(Solicitud solicitud, String tabla) {
        String res = "No inserto";
        StringBuffer cod = consultarCodigo(tabla);
        String sql = "INSERT INTO solicitudes(nombre, apellido, telefono, correo, cod_inmueble)"
                + "VALUES('" + solicitud.getNombre() + "','" + solicitud.getApellido() + "',"
                + solicitud.getTelefono() + ",'" + solicitud.getCorreo() + "','" + cod.toString() + "');";
        if (conexion.actualizar(sql) == 1) {
            res = "";
        }
        return res;
    }
}