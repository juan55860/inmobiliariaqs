/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Edificio;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarEdificio {

    clsConexionBD conexion;

    public ctrlIngresarEdificio() {
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

    public String insertar(Edificio edificio) {
        String res = "No inserto";
        if (verificarPersona(edificio.getCodPropietario()) == true) {
            String sql = "INSERT INTO edificios(precio,direccion,cod_propietario,area,descripcion,estado,num_pisos,num_parqueaderos)"
                    + "VALUES('" + edificio.getPrecio() + "','" + edificio.getDireccion() +"'," + edificio.getCodPropietario() + ","
                    +edificio.getArea() + ",'" + edificio.getDescripcion() + "','" + edificio.getEstado() + "'," + edificio.getNumPisos() + "," + edificio.getNumParqueaderos() + ");";
            if (conexion.actualizar(sql) == 1) {
                res = "";
            }
        }
        return res;
    }
}
