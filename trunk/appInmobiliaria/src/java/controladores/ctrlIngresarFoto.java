/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

/**
 *
 * @author usuario
 */
public class ctrlIngresarFoto {

    modelo.clsConexionBD conexion;

    public ctrlIngresarFoto() {
        conexion = new modelo.clsConexionBD();
    }

    public void ingresarFotoenTabla(String urlFoto, String keyInmueble) {
        String query = "INSERT INTO fotos(archivo,cod_inmueble) VALUES ('" + urlFoto + "','" + keyInmueble + "')";
        conexion.insertar(query);
    }
}
