/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Comercial;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarComercial {
    
    clsConexionBD conexion;
    
    public ctrlIngresarComercial() {
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
    
    public boolean verificarBarrio(String key) {
        boolean res = false;
        String sql = "SELECT * FROM barrios where nombre = '" + key + "';";
        if (conexion.verificar(sql) == 1) {
            res = true;
        }
        return res;
    }
    
    public String insertar(Comercial comercial) {
        String res = "No inserto";
         if (verificarPersona(comercial.getCodPropietario()) == true) {
            String sql = "INSERT INTO comerciales(precio, direccion, cod_propietario, area, descripcion, estado, tipo, num_bannos, num_pisos, cod_barrio)"
                    + "VALUES('"+ comercial.getPrecio() + "','" + comercial.getDireccion() + "'," 
                    + comercial.getCodPropietario() + "," + comercial.getArea() + ",'" + comercial.getDescripcion()
                    + "','" + comercial.getEstado() + "','" + comercial.getTipo() + "'," + comercial.getBanos() + "," + comercial.getNumeroPisos() + ",'" + comercial.getBarrio() + "');";
            if (conexion.actualizar(sql) == 1) {
                res = "";
            }
        }
        return res;
    }

    
}
