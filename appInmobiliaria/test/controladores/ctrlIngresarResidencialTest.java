package controladores;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import modelo.Residencial;
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
public class ctrlIngresarResidencialTest {
    
    public ctrlIngresarResidencialTest() {
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
     * Test of verificarPersona method, of class ctrlIngresarResidencial.
     */
    @Test
    public void testVerificarPersona() {
        System.out.println("verificarPersona");
        int key = 1000000002;
        ctrlIngresarResidencial instance = new ctrlIngresarResidencial();
        boolean expResult = true;
        boolean result = instance.verificarPersona(key);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of verificarBarrio method, of class ctrlIngresarResidencial.
     */
    @Test
    public void testVerificarBarrio() {
        System.out.println("verificarBarrio");
        int key = 0;
        ctrlIngresarResidencial instance = new ctrlIngresarResidencial();
        boolean expResult = false;
        boolean result = instance.verificarBarrio(key);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }

    /**
     * Test of insertar method, of class ctrlIngresarResidencial.
     */
    @Test
    public void testInsertar() {
        System.out.println("insertar");
        Residencial residencial = new Residencial();
        residencial.setCodPropietario(1105455450);
        ctrlIngresarResidencial instance = new ctrlIngresarResidencial();
        String expResult = "No inserto";
        String result = instance.insertar(residencial);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
//        fail("The test case is a prototype.");
    }
}
