/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Rural;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarRural {

    clsConexionBD conexion;

    public ctrlIngresarRural() {
        conexion = new clsConexionBD();
    }

    public boolean verificarPersona(int key) {
        boolean res = false;
        String sql = "SELECT * FROM personas where identificacion = " + key + ";";
        if (conexion.verificar(sql) == 1) {
            res = true;
        }
        return res;
    }

    public String insertar(Rural rural) {
        String res = "No inserto";
        if (verificarPersona(rural.getCodPropietario()) == true) {
            String sql = "INSERT INTO edificios(precio,direccion,estrato,cod_propietario,prioridad,area,descripcion,estado,tipo,num_bannos,num_habitaciones,num_piscinas)"
                    + "VALUES('" + rural.getPrecio() + "','" + rural.getDireccion() + "','" + rural.getEstrato() + "'," + rural.getCodPropietario() + "," + rural.getPrioridad()
                    + "," + rural.getArea() + ",'" + rural.getDescripcion() + "','" + rural.getEstado() + "','" + rural.getTipo() + "'," + rural.getBano() + "," + rural.getHabitaciones() + "," + rural.getPiscina() + ");";
            if (conexion.actualizar(sql) == 1) {
                res = "";
            }
        }
        return res;
    }
}
