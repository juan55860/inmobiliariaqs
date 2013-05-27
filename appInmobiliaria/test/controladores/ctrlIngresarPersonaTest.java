package controladores;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Calendar;
import java.util.GregorianCalendar;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author David Leonardo
 */
public class ctrlIngresarPersonaTest {
    
    Calendar fechaDeRegistro;
    
    public ctrlIngresarPersonaTest() {
        fechaDeRegistro = new GregorianCalendar();
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of verificar method, of class ctrlIngresarPersona.
     */
    @Test
    public void testVerificar() {
        System.out.println("verificar");
        int key = 1234;
        ctrlIngresarPersona instance = new ctrlIngresarPersona();
        boolean expResult = true;
        boolean result = instance.verificar(key);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of login method, of class ctrlIngresarPersona.
     */
    @Test
    public void testLogin() {
        System.out.println("login");
        String name = "Daviko";
        String password = "1234";
        ctrlIngresarPersona instance = new ctrlIngresarPersona();
        boolean expResult = true;
        boolean result = instance.login(name, password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of insertar method, of class ctrlIngresarPersona.
     */
    @Test
    public void testInsertar() {
        System.out.println("insertar");
        ctrlIngresarPersona instance = new ctrlIngresarPersona();
        instance.setApellido("Soto");
        instance.setContrasena("soft987");
        instance.setCorreo("derlypatricia@gmail.com");
        instance.setDireccion("calle 67 # 45-78");
        instance.setFechaDeRegistro(fechaDeRegistro.getTime());
        instance.setIdentificacion(3030);
        instance.setNombre("Derly");
        instance.setRol("arrendador");
        instance.setTelefono("8917566");
        instance.setTipoIdentificacion("CEDULA");
        String expResult = "No inserto";
        String result = instance.insertar(instance.getIdentificacion());
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of esNumero method, of class ctrlIngresarPersona.
     */
    @Test
    public void testEsNumero() {
        System.out.println("esNumero");
        String cadena = "456";
        ctrlIngresarPersona instance = new ctrlIngresarPersona();
        boolean expResult = true;
        boolean result = instance.esNumero(cadena);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }
}
