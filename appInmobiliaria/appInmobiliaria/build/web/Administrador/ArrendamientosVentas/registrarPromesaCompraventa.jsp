<%-- 
    Document   : registrarPromesaCompraventa
    Created on : 23/04/2013, 11:43:31 AM
    Author     : hw4
--%>

<%@page import="javax.swing.text.Document"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Contrato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Reservas</title>
	
<link rel="stylesheet" href="../js/Dialog/jquery-ui.css"/>
<script src="../js/Dialog/jquery-1.9.1.js"></script>
<script src="../js/Dialog/jquery-ui.js"></script>

<link rel="stylesheet" href="../js/Dialog/style.css" />

<script>
	$(function() {
		$( "#dialog" ).dialog();
	});
	</script>
</head>
<body>
    <%
    
    /*
 * id="combo1">
 id="combo2 
id="combo3
 name="fechaEscritura"
name="numEscritura" 
 name="numNotaria"
 name="ciuNotaria" 
 name="cantVenta"
name="cifVenta" 
name="porcGanado"
name="diaNueEsc" 
name="mesNueEsc"
name="aÃ±oNueEsc"
name="numNotarNue" 
name="nombre"
 name="ciuNueEsc" 
name="ciuFirma" 
name="diaFirma" 
name="mesFirma" 
name="aÃ±oFirma"
 * 
 * 
 * 
 * */
    modelo.Contrato contrato = new Contrato();
    int codigoContrato = 0;
    
    contrato.setCodigo(1);
   
    
   
    contrato.setCodArrendador(Integer.parseInt(request.getParameter("codVendedor")));
    contrato.setCodArrendatario(Integer.parseInt(request.getParameter("codComprador")));
    contrato.setDescripcion("venta");
    Date now = new Date();
DateFormat df = DateFormat.getDateInstance();
String s = df.format(now);
    contrato.setFecha(s);
    contrato.setCodInmueble(request.getParameter("codInmueble"));
    contrato.setValor(Integer.parseInt(request.getParameter("cifVenta")));
    
    int comision = (contrato.getValor() * Integer.parseInt(request.getParameter("porcGanado")))/100;
    contrato.setComision(comision);
    contrato.setDuracion(0);
    
  String fechaEscritura=request.getParameter("fechaEscritura");
String numEscritura = request.getParameter("numEscritura"); 
String numNotaria = request.getParameter("numNotaria");
 String ciuNotaria= request.getParameter("ciuNotaria"); 
 String cantVenta= request.getParameter("cantVenta");
String cifVenta = request.getParameter("cifVenta"); 
String porcGanado = request.getParameter("porcGanado");
String diaNueEsc = request.getParameter("diaNueEsc"); 
String mesNueEsc = request.getParameter("mesNueEsc");
String anoNueEsc= request.getParameter("anoNueEsc");
String numNotarNue = request.getParameter("nombreNotaria" );
 String ciuNueEsc = request.getParameter("ciuNueEsc" );
String ciuFirma = request.getParameter("ciuFirma");
String diaFirma = request.getParameter("diaFirma");
String mesFirma = request.getParameter("mesFirma" );
String anoFirma = request.getParameter("anoFirma");
String hora = request.getParameter("hora");
String nombreNotaria = request.getParameter("nombreNotaria");
    
    modelo.clsConexionBD cnn = new modelo.clsConexionBD();

        
        
        
       
            for(int i=1; i<100; i++){
       contrato.setCodigo(i);
        String respuesta = cnn.crearContrato(contrato);
       
       if(respuesta.equals("1")){
                
           codigoContrato = i;
                 %>
                   <div id="dialog" title="Mensaje Importante:">
	<p>Se guardo la informacion Correctamente</p>
</div>

                <%
                break;
              }
       }

    controladores.CtrlContratoPDF pdf = new controladores.CtrlContratoPDF();
    pdf.crear("a", "b", "c", "d","venta",codigoContrato,contrato,fechaEscritura, numEscritura,numNotaria, ciuNotaria, diaNueEsc, mesNueEsc, anoNueEsc, numNotarNue, ciuNueEsc, ciuFirma,diaFirma, mesFirma, anoFirma, cantVenta, hora, nombreNotaria);

        %>
        
        
</body>
</html>
