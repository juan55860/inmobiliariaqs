/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
//archivos
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
//librerias ajenas a itext
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 * @web http://jc-mouse.blogspot.com/
 * @author Mouse
 */
public class CtrlContratoPDF {

    String rutaDestino;
    String textoVenta;
    String textoArrendamiento;
    String nombrePdf;

    public CtrlContratoPDF() {
    }

    public void crearContrato(String a, String b, String c, String d, String e, int nombre, modelo.Contrato contrato, String cantidadMeses, String fechaIni, String cifra, String diasPlazo) {
        nombrePdf = nombre + "";
        crear_PDF2(a, b, c, d, e, contrato, cantidadMeses, fechaIni, cifra, diasPlazo);
    }

    public void crear(String a, String b, String c, String d, String e, int nombre, modelo.Contrato contrato, String fechaEscritura, String numEscritura, String numNotaria, String ciuNotaria, String diaNueEsc, String mesNueEsc, String anoNueEsc, String numNotarNue, String ciuNueEsc, String ciuFirma, String diaFirma, String mesFirma, String anoFirma, String cantVenta, String hora, String nombreNotaria) {
        nombrePdf = nombre + "";
        crear_PDF(a, b, c, d, e, contrato, fechaEscritura, numEscritura, numNotaria, ciuNotaria, diaNueEsc, mesNueEsc, anoNueEsc, numNotarNue, ciuNueEsc, ciuFirma, diaFirma, mesFirma, anoFirma, cantVenta, hora, nombreNotaria);
    }

    /* metodo que hace uso de la clase itext para manipular archivos PDF*/
    public void crear_PDF(String t, String a, String s, String k, String c, modelo.Contrato contrato, String fechaEscritura, String numEscritura, String numNotaria, String ciuNotaria, String diaNueEsc, String mesNueEsc, String anoNueEsc, String numNotarNue, String ciuNueEsc, String ciuFirma, String diaFirma, String mesFirma, String anoFirma, String cantVenta, String hora, String nombreNotaria) {
        //abre ventana de dialogo "guardar"
        Colocar_Destino();

        if (c.equals("venta")) {
            Colocar_Texto(contrato, fechaEscritura, numEscritura, numNotaria, ciuNotaria, diaNueEsc, mesNueEsc, anoNueEsc, numNotarNue, ciuNueEsc, ciuFirma, diaFirma, mesFirma, anoFirma, cantVenta, hora, nombreNotaria);
        }
        //si destino es diferente de null
        if (this.rutaDestino != null) {
            System.out.println("ruta" + this.rutaDestino);
            try {
                // se crea instancia del documento
                Document mipdf = new Document();
                // se establece una instancia a un documento pdf
                //   PdfWriter.getInstance(mipdf, new FileOutputStream(this.ruta_destino + ".pdf"));
                PdfWriter.getInstance(mipdf, new FileOutputStream(this.rutaDestino + this.nombrePdf + ".pdf"));
                mipdf.open();// se abre el documento
                mipdf.addTitle(t); // se añade el titulo
                mipdf.addAuthor(a); // se añade el autor del documento
                mipdf.addSubject(s); //se añade el asunto del documento
                mipdf.addKeywords(k); //Se agregan palabras claves
                if (c.equals("venta")) {
                    mipdf.add(new Paragraph(this.textoVenta)); // se añade el contendio del PDF
                } else {
                    mipdf.add(new Paragraph(this.textoArrendamiento)); // se añade el contendio del PDF
                }
                mipdf.close(); //se cierra el PDF&
            } catch (DocumentException ex) {
                Logger.getLogger(modelo.Contrato.class.getName()).log(Level.SEVERE, null, ex);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(modelo.Contrato.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void crear_PDF2(String t, String a, String s, String k, String c, modelo.Contrato contrato, String cantidadMeses, String fechaIni, String cifra, String diasPlazo) {
        //abre ventana de dialogo "guardar"
        Colocar_Destino();
        if (c.equals("arrendamiento")) {
            Colocar_Texto2(contrato, cantidadMeses, fechaIni, cifra, diasPlazo);
        }
        //si destino es diferente de null
        if (this.rutaDestino != null) {
            System.out.println("ruta" + this.rutaDestino);
            try {
                // se crea instancia del documento
                Document mipdf = new Document();
                // se establece una instancia a un documento pdf
                //   PdfWriter.getInstance(mipdf, new FileOutputStream(this.ruta_destino + ".pdf"));
                PdfWriter.getInstance(mipdf, new FileOutputStream(this.rutaDestino + this.nombrePdf + ".pdf"));
                mipdf.open();// se abre el documento
                mipdf.addTitle(t); // se añade el titulo
                mipdf.addAuthor(a); // se añade el autor del documento
                mipdf.addSubject(s); //se añade el asunto del documento
                mipdf.addKeywords(k); //Se agregan palabras claves
                if (c.equals("venta")) {
                    mipdf.add(new Paragraph(this.textoVenta)); // se añade el contendio del PDF
                } else {
                    mipdf.add(new Paragraph(this.textoArrendamiento)); // se añade el contendio del PDF
                }
                mipdf.close(); //se cierra el PDF&
            } catch (DocumentException ex) {
                Logger.getLogger(modelo.Contrato.class.getName()).log(Level.SEVERE, null, ex);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(modelo.Contrato.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    /* abre la ventana de dialogo GUARDAR*/

    public void Colocar_Destino() {

        this.rutaDestino = "C:\\Users\\usuario\\Documents\\NetBeansProjects\\Subversion\\appInmobiliaria\\web\\Administrador\\pdf\\";

    }

    private void Colocar_Texto(modelo.Contrato contrato, String fechaEscritura, String numEscritura, String numNotaria, String ciuNotaria, String diaNueEsc, String mesNueEsc, String anoNueEsc, String numNotarNue, String ciuNueEsc, String ciuFirma, String diaFirma, String mesFirma, String anoFirma, String cantVenta, String hora, String nombreNotaria) {
        this.textoVenta = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t PROMESA DE COMPRAVENTA\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tEntre los suscritos a saber, con codigo : " + contrato.getCodArrendador() + ", registrado en la inmobiliaria quien\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tpara los efectos del presente contrato se denominará el(la)  PROMITENTE\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tVENDEDOR(A)  y  con codigo: " + contrato.getCodArrendatario() + ", registrado en la inmobiliaria, quien\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tpara los efectos del presente contrato se denominará EL PROMITENTE \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tCOMPRADOR, manifestaron que han decidido celebrar un contrato de PROMESA\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tDE COMPRAVENTA de bien inmueble, en adelante la promesa, se regirá por las\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tsiguientes cláusulas:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPRIMERA.-OBJETO: El PROMITENTE  VENDEDOR promete vender al\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPROMITENTE COMPRADOR y éste promete comprar el bien inmueble con\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tcódigo: " + contrato.getCodInmueble() + "  ofrecido por nuestra inmobiliaria, con  escritura pública número: " + numEscritura + " \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tdel " + fechaEscritura + " de la NOTARIA " + numNotaria + " de " + ciuNotaria + ", mediante la cual el\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPROMITENTE  VENDEDOR lo adquirió.\n\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tSEGUNDA.- LIBERTAD Y SANEAMIENTO: LA  PROMITENTE VENDEDORA,\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tgarantiza al PROMITENTE COMPRADOR   que el inmueble prometido en venta\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tmediante éste documento no lo  han enajenado ni prometido en venta por acto\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tanterior al presente, que en la actualidad lo posee en forma regular, pública y \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tpacífica, que se halla libre de  hipotecas, censos, anticresis, embargos, pleitos\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tpendientes, condiciones resolutorias,  patrimonio de familia, uso, habitación,\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tarrendamientos por escritura pública o por contrato privado,  pero en todo caso\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tse obliga a salir al saneamiento por vicios ocultos, redhibitorios  o cualquier otro\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tvicio que afecte el   inmueble prometido en venta.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tTERCERA.- PAZ Y SALVO DE IMPUESTOS Y SERVICIOS:   LA \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPROMITENTE VENDEDORA, se obliga a entregar el inmueble prometido en\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tventa,  a paz y salvo por concepto de impuesto predial, valorización o\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tcomplementarios,  por servicios de agua, acueducto y   alcantarillado, servicios\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tde aseo, de energía  eléctrica, de gas, servicio telefónico, administración y \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tcualquier otro servicio del que goce el  inmueble objeto de éste contrato hasta la\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tfecha de entrega del mismo.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tCUARTA- PRECIO: El valor acordado como precio de venta del inmueble\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tprometido en venta es la suma de " + cantVenta + " PESOS colombianos\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\t" + contrato.getValor() + " MONEDA CORRIENTE, que el PROMITENTE\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tCOMPRADOR pagarán a LA PROMITENTE VENDEDORA de la siguiente\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tmanera: CONTADO\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tQUINTA.- ENTREGA DEL INMUEBLE: LA PROMITENTE VENDEDORA, hará\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tentrega real y material del inmueble objeto del presente contrato al\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPROMITENTE  COMPRADOR en el estado en que se encuentra, el día de la\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tfirma de la escritura pública.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tSEXTA.-  GASTOS NOTARIALES Y DE REGISTRO:   Los gastos notariales\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tque ocasione la escritura pública de compraventa que perfeccione el presente\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tcontrato, serán cancelados por partes iguales entre LA PROMITENTE\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tVENDEDORA y EL PROMITENTE  COMPRADOR, los impuestos de registro y \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tderechos de registro serán cancelados por EL PROMITENTE COMPRADOR, la\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tRetención en la Fuente por concepto de transferencia,  será cancelada por LA\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPROMITENTE VENDEDORA.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tSEPTIMA.-  ESCRITURACIÓN:  Las partes acuerdan, que la firma de la\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tescritura pública que perfeccione el presente contrato se llevará a cabo el día\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\t" + diaNueEsc + " del mes de " + mesNueEsc + " del año " + anoNueEsc + " a las " + hora + " en la Notaria\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\t" + numNotarNue + " de " + ciuNueEsc + " \n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tOCTAVA.-MERITO EJECUTIVO: Las partes declaran que éste documento\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tpresta mérito ejecutivo para la efectividad de las obligaciones en el contraídas.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tNOVENA. CESION: Las Partes se comprometen a no ceder ni parcial, ni\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\ttotalmente las obligaciones contenidas en el presente contrato, sin autorización\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tprevia y por escrito del contrato concedido. Si contravinieren esta disposición, la\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tcesión no tendrá efectos jurídicos y por tanto no exime de responsabilidad a\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tquien la haya realizado sin autorización de la otra parte.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tPara constancia se firma en " + ciuFirma + "., a los " + diaFirma + " días del mes de " + mesFirma + " de\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\t" + anoFirma + ".\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tLA PROMITENTE VENDEDORA:\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tC.C. No.         \t\t        Expedida en"
                + "\n\n\n\n\t\t\t\t\t\t\t\t\t\t\t\t\tEL PROMITENTE COMPRADOR:\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t\tC.C. No.      \t\t           Expedida en"
                + "\n\n\n\n\n";
    }

    private void Colocar_Texto2(modelo.Contrato contrato, String cantidadMeses, String fechaIni, String cifra, String diasPlazo) {
        this.textoArrendamiento = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Contrato de Arrendamiento\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tEntre los suscritos a saber:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tPARTES:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tLa persona con codigo " + contrato.getCodArrendador() + " por una parte, quien en adelante se denominará\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tel ARRENDADOR  y  la persona con codigo " + contrato.getCodArrendatario() + " mayor de edad, identificado\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tcomo aparece al pie de su firma, quien en adelante se denominará EL\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tARRENDATARIO, han decidido celebrar el contrato de arrendamiento del \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tbien inmueble con código " + contrato.getCodInmueble() + " , que se rige por las siguientes cláusulas:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tPRIMERA. DURACIÓN. DURACIÓN. El término de duración de este contrato\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tserá de " + contrato.getDuracion() + " (meses) contados a partir del día " + fechaIni + ".\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tSi al vencimiento de este plazo ninguna de las partes ha manifestado su\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tintención de darlo por terminado, se entenderá prorrogado por un término igual\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tal inicialmente pactado. El aviso de  terminación del contrato deberá darse por\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tel arrendatario a la entidad arrendadora en forma escrita con tres (3)  meses de\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tanticipación al vencimiento del mismo.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tSEGUNDA. PRECIO.  El precio del arrendamiento es de " + cifra + " PESOS\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tCOLOMBIANOS ($ " + contrato.getValor() + " ) mensuales, que el arrendatario pagará por\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tperiodos anticipados en las oficinas de la entidad arrendadora, en esta  ciudad,\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\to por medio autorizado por la inmobiliaria, dentro de los " + diasPlazo + " primeros días de\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tcada mensualidad, si lo hiciera fuera de este plazo y la arrendadora lo aceptare,\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tello se considerará como una mera tolerancia para con el  arrendatario, pero en\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tforma alguna, una alteración de los términos de este contrato.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tTERCERA. INCREMENTO DEL PRECIO. Al vencimiento del término\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tseñalado en este contrato, EL ARRENDADOR podrá modificar el precio o renta, en la\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tcuantía autorizada por la ley. Si el ARRENDATARIO no se aviene al pago del nuevo\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tprecio, el ARRENDADOR podrá dar por terminado el contrato.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tCUARTA.- RECIBO Y ESTADO: EL ARRENDATARIO declara que ha recibido el predio\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tobjeto de este contrato en buen estado, conforme al inventario estipulado, el cual\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\thace parte de este contrato; en el mismo se determinan los servicios, cosas y \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tusos conexos.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tEL ARRENDATARIO se obliga a devolver al ARRENDADOR el predio en el mismo estado,\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tsalvo el deterioro proveniente del tiempo y uso legítimos.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tQUINTA.- MEJORAS: EL ARRENDATARIO consiente desde ya en la realización de\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tobras de instalación y adecuación que se estipularon como mejoras y tendrá\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tademás a su cargo las reparaciones locativas necesarias para tal fin y a \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tlas que se refiere la ley y sólo podrá realizar obras distintas a las\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\taquí previstas con el consentimiento escrito del ARRENDADOR.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tSEXTA. PAGO DE SERVICIOS. PAGO DE SERVICIOS Los servicios de energía,\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tacueducto, aseo, alcantarillado, gas, teléfono y vigilancia serán por \n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tcuenta del ARRENDATARIO ten la cuantía en que tales servicios sean facturados\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tpor las empresas que los presten.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tSEPTIMA.- OBLIGACIONES DE LAS PARTES:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tDEL ARRENDADOR:\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t1. Hará entrega material del predio al ARRENDATARIO el " + fechaIni + ", en buen\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\testado de servicio, seguridad y sanidad y pondrá a su disposición los servicios cosas\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\ty usos conexos convenidos en este contrato, mediante inventario, del cual hará entrega\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tal ARRENDATARIO, asi como copia del contrato en firmas originales.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t2. Mantendrá el predio en buen estado de servir para el cumplimiento del objeto del\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tcontrato.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t3. Librará al ARRENDATARIO de toda perturbación o apremio en el goce del predio.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tDEL ARRENDATARIO:\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t1. Gozará del predio según los términos y espíritu del contrato.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t2. Velará por la conservación del predio y cuidará que no se usurpe ninguna de\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tsus partes.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t3. Pagará al ARRENDADOR en el lugar y fecha convenidos en la cláusula segunda de\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\teste contrato, el precio del arrendamiento.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t4. Restituirá el predio a la terminación del contrato, en el estado en que le fue entregado\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\ty poniéndolo a disposición del ARRENDADOR.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tOCTAVA.- TERMINACIÓN DEL CONTRATO: Son causales de terminación unilateral del\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tcontrato, entre otras:\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tPOR PARTE DEL ARRENDADOR:\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t1. La no cancelación del precio del arrendamiento, o de los servicios públicos que\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tocasione la pérdida de conexión de los mismos.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t2. El subarriendo, la cesión y el cambio de destinación del predio.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t3. Las mejoras, cambios o ampliaciones del predio sin autorización escrita del\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tARRENDADOR.\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tPOR PARTE DEL ARRENDATARIO:\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t1. La suspensión de la prestación de los servicios públicos al predio por acción o mora\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tdel ARRENDADOR.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t2. Los actos del ARRENDADOR que afecten gravemente el goce del predio.\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\t3. El desconocimiento del ARRENDADOR de los derechos reconocidos al\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tARRENDATARIO por la ley y este contrato.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tPARÁGRAFO: No obstante, las partes en cualquier tiempo y de común acuerdo podrán\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tdar por terminado el presente contrato.\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tNOVENAA.- PRÓRROGA: DE ACUERDO A COMO LO ESTABLEZCAN LAS PARTES.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tDECIMA.- MORA: DE ACUERDO A COMO LO ESTABLEZCAN LAS PARTES.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tDECIMO PRIMERA.- CLÁUSULA PENAL: DE ACUERDO A COMO LO ESTABLEZCAN\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tLAS PARTES.\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tDÉCIMO SEGUNDA: CONSTANCIA DE RECIBO. EL ARRENDATARIO y ARRENDADOR\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\thacen constar expresamente que a la firma del presente contrato se nos\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\thizo entrega a cada uno de un ejemplar original del respectivo contrato\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tde arrendamiento debidamente firmado.\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tPara constancia y en señal de aceptación se firma este documento y sus ejemplares del\n "
                + "\t\t\t\t\t\t\t\t\t\t\t\tmismo tenor literal destinado a las partes, en la ciudad de Manizales.\n\n\n\n\n"
                + "\t\t\t\t\t\t\t\t\t\t\t\tEl ARRENDADOR					  \t\t\t\t\t\t\t\t\t\t\t\tEL ARRENDATARIO\n\n\n\n\n";



    }
}