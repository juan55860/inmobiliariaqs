/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Residencial;
import modelo.clsConexionBD;

/**
 *
 * @author usuario
 */
public class ctrlIngresarResidencial {
    
    clsConexionBD conexion;
    
    public ctrlIngresarResidencial() {
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
    
    public boolean verificarBarrio(int key) {
        boolean res = false;
        String sql = "SELECT * FROM barrios where codigo = " + key + ";";
        if (conexion.verificar(sql) == 1) {
            res = true;
        }
        return res;
    }
    
    public String insertar(Residencial residencial) {
        String res = "No inserto";
         if (verificarPersona(residencial.getCodPropietario()) == true) {
            String sql = "INSERT INTO residenciales(precio,direccion,estrato,cod_propietario,area,descripcion,estado,tipo,num_bannos,num_habitaciones,num_pisos,parqueadero,cod_barrio)"
                    + "VALUES('"+ residencial.getPrecio() + "','" + residencial.getDireccion() + "','" + residencial.getEstrato() + "'," + residencial.getCodPropietario()
                    + "," + residencial.getArea() + ",'" + residencial.getDescripcion() + "','" + residencial.getEstado() + "','" + residencial.getTipo() + "'," + residencial.getBanos()
                    + "," + residencial.getHabitaciones() + "," + residencial.getNumeroPisos() + "," + residencial.getParqueadero() + ",'" + residencial.getCodigoBarrio() + "');";
            if (conexion.actualizar(sql) == 1) {
                res = "";
            }
        }
        return res;
    }   
}