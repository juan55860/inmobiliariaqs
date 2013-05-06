/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import modelo.Contrato;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author usuario
 */
public class CtrlContratoPDFTest {
    
    public CtrlContratoPDFTest() {
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
     * Test of crearContrato method, of class CtrlContratoPDF.
     */
    @Test
    public void testCrearContrato() {
        System.out.println("crearContrato");
        String a = "";
        String b = "";
        String c = "";
        String d = "";
        String e = "";
        int nombre = 0;
        Contrato contrato = null;
        String cantidadMeses = "";
        String fechaIni = "";
        String cifra = "";
        String diasPlazo = "";
        CtrlContratoPDF instance = new CtrlContratoPDF();
        instance.crearContrato(a, b, c, d, e, nombre, contrato, cantidadMeses, fechaIni, cifra, diasPlazo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of crear method, of class CtrlContratoPDF.
     */
    @Test
    public void testCrear() {
        System.out.println("crear");
        String a = "";
        String b = "";
        String c = "";
        String d = "";
        String e = "";
        int nombre = 0;
        Contrato contrato = null;
        String fechaEscritura = "";
        String numEscritura = "";
        String numNotaria = "";
        String ciuNotaria = "";
        String diaNueEsc = "";
        String mesNueEsc = "";
        String anoNueEsc = "";
        String numNotarNue = "";
        String ciuNueEsc = "";
        String ciuFirma = "";
        String diaFirma = "";
        String mesFirma = "";
        String anoFirma = "";
        String cantVenta = "";
        String hora = "";
        String nombreNotaria = "";
        CtrlContratoPDF instance = new CtrlContratoPDF();
        instance.crear(a, b, c, d, e, nombre, contrato, fechaEscritura, numEscritura, numNotaria, ciuNotaria, diaNueEsc, mesNueEsc, anoNueEsc, numNotarNue, ciuNueEsc, ciuFirma, diaFirma, mesFirma, anoFirma, cantVenta, hora, nombreNotaria);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of crear_PDF method, of class CtrlContratoPDF.
     */
    @Test
    public void testCrear_PDF() {
        System.out.println("crear_PDF");
        String t = "";
        String a = "";
        String s = "";
        String k = "";
        String c = "";
        Contrato contrato = null;
        String fechaEscritura = "";
        String numEscritura = "";
        String numNotaria = "";
        String ciuNotaria = "";
        String diaNueEsc = "";
        String mesNueEsc = "";
        String anoNueEsc = "";
        String numNotarNue = "";
        String ciuNueEsc = "";
        String ciuFirma = "";
        String diaFirma = "";
        String mesFirma = "";
        String anoFirma = "";
        String cantVenta = "";
        String hora = "";
        String nombreNotaria = "";
        CtrlContratoPDF instance = new CtrlContratoPDF();
        instance.crear_PDF(t, a, s, k, c, contrato, fechaEscritura, numEscritura, numNotaria, ciuNotaria, diaNueEsc, mesNueEsc, anoNueEsc, numNotarNue, ciuNueEsc, ciuFirma, diaFirma, mesFirma, anoFirma, cantVenta, hora, nombreNotaria);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of crear_PDF2 method, of class CtrlContratoPDF.
     */
    @Test
    public void testCrear_PDF2() {
        System.out.println("crear_PDF2");
        String t = "";
        String a = "";
        String s = "";
        String k = "";
        String c = "";
        Contrato contrato = null;
        String cantidadMeses = "";
        String fechaIni = "";
        String cifra = "";
        String diasPlazo = "";
        CtrlContratoPDF instance = new CtrlContratoPDF();
        instance.crear_PDF2(t, a, s, k, c, contrato, cantidadMeses, fechaIni, cifra, diasPlazo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of Colocar_Destino method, of class CtrlContratoPDF.
     */
    @Test
    public void testColocar_Destino() {
        System.out.println("Colocar_Destino");
        CtrlContratoPDF instance = new CtrlContratoPDF();
        instance.Colocar_Destino();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
}