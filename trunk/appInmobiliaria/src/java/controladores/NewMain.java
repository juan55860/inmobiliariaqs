/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.sql.SQLException;

/**
 *
 * @author usuario
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        modelo.clsConexionBD cl = new modelo.clsConexionBD();
        StringBuffer c = cl.consultarClaveBarrio();
        System.out.println(c);
    }
}
