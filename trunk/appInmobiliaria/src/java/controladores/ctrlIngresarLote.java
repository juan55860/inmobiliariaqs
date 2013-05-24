/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Lote;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarLote {

    clsConexionBD conexion;

    public ctrlIngresarLote() {
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

    public String insertar(Lote lote) {
        String res = "No inserto";
        if (verificarPersona(lote.getCodPropietario()) == true) {
            String sql = "INSERT INTO lotes(precio,direccion,estrato,cod_propietario,area,descripcion,estado,fecha_registro,tipo, validacion)"
                    + "VALUES('" + lote.getPrecio() + "','" + lote.getDireccion() + "','" + lote.getEstrato() + "'," + lote.getCodPropietario() + "," + lote.getArea()
                    + ",'" + lote.getDescripcion() + "','" + lote.getEstado() + "','" + lote.getFechaDeRegistro() + "','" + lote.getTipo() + "','" + lote.getValidacion() + "');";
            if (conexion.actualizar(sql) == 1) {
                res = "";
            }
        }
        return res;
    }
}
