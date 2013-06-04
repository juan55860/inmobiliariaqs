/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Inmueble;
import modelo.Persona;
import modelo.clsConexionBD;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Camilo
 */
public class ctrlIngresarInmuebleTest {

    private controladores.ctrlIngresarInmueble ctrlInmueble;

    public ctrlIngresarInmuebleTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        ctrlInmueble = new ctrlIngresarInmueble();
    }

    @After
    public void tearDown() {
    }

   

    /**
     * Test of insertarInmueblesBD method, of class ctrlIngresarInmueble.
     * @see Solo se corre 1 vez;
     */
    @Test
    public void testInsertarInmueblesBD() {
        System.out.println("insertarInmueblesBD");
        Persona per = new Persona(1053819381);
        Inmueble inmueble = new Inmueble("30000", "bar100", "Calle 34B No 45-34", "1", 250, "tip100", per, 2, 30);
        int expResult =1;
        int result = ctrlInmueble.insertarInmueblesBD(inmueble);
        assertEquals(expResult, result);
       
    }

    /**
     * Test of buscarTipoInmueble method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testBuscarTipoInmuebleExistente() {
        System.out.println("buscarTipoInmueble");
        String key = "tip100";

        StringBuffer expResult = null;
        StringBuffer result = ctrlInmueble.buscarTipoInmueble(key);
        assertEquals(result, result);

    }
       /**
     * Test of buscarTipoInmueble method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testBuscarTipoInmuebleInExistente() {
        System.out.println("buscarTipoInmueble");
        String key = "nm100";

        StringBuffer result = ctrlInmueble.buscarTipoInmueble(key);
        assertEquals(result, result);

    }

    /**
     * Test of buscarIdBarrio method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testBuscarIdBarrioExistente() {
        System.out.println("buscarIdBarrio");
        String key = "bar100";
        StringBuffer result = ctrlInmueble.buscarIdBarrio(key);
        assertEquals(result, result);

    }
     /**
     * Test of buscarIdBarrio method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testBuscarIdBarrioInExistente() {
        System.out.println("buscarIdBarrio");
        String key = "bar0002";    
        StringBuffer result = ctrlInmueble.buscarIdBarrio(key);
        assertEquals(result, result);

    }

    /**
     * Test of verificarCliente method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testVerificarClienteExistente() {
        System.out.println("verificarCliente");
        int key = 1053819381;
        boolean expResult = true;
        boolean result = ctrlInmueble.verificarCliente(key);
        assertEquals(expResult, result);
    }
    
       /**
     * Test of verificarCliente method, of class ctrlIngresarInmueble.
     */
    @Test
    public void testVerificarClienteInExistente() {
        System.out.println("verificarCliente");
        int key = 1111;
        boolean expResult = false;
        boolean result = ctrlInmueble.verificarCliente(key);
        assertEquals(expResult, result);
    }
}