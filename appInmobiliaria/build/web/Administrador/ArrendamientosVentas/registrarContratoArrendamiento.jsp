<%-- 
    Document   : registrarContratoArrendamiento
    Created on : 23/04/2013, 11:43:04 AM
    Author     : hw4
--%>

<%@page import="java.sql.ResultSet"%>
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
 * 
 * name="codArrendador"
name="codArrendatario"
name="codInmueble"
name="cantidadMeses"
name="fechaIni" 
name="cifra" 
name="cantArrendamiento"
name="diasPlazo" 
name="porcGanado"
name="ciuFirma" 
name="diaFirma"
name="mesFirma"
name="anoFirma"

 * 
 * 
 * 
 * */
    modelo.Contrato contrato = new Contrato();
    
    int codigoContrato = 0;
    
    
   
    String cantidadMeses=request.getParameter("cantidadMeses");
    String fechaIni = request.getParameter("fechaIni");
   String cifra = request.getParameter("cifra" );
            String diasPlazo = request.getParameter("diasPlazo");
    contrato.setCodArrendador(Integer.parseInt(request.getParameter("codArrendador")));
    contrato.setCodArrendatario(Integer.parseInt(request.getParameter("codArrendatario")));
    contrato.setDescripcion("arrendamiento");
    Date now = new Date();
DateFormat df = DateFormat.getDateInstance();
String s = df.format(now);
    contrato.setFecha(s);
    contrato.setCodInmueble(request.getParameter("codInmueble"));
    contrato.setValor(Integer.parseInt(request.getParameter("cifra")));
    
    int comision = (contrato.getValor() * Integer.parseInt(request.getParameter("porcGanado")))/100;
    contrato.setComision(comision);
    contrato.setDuracion(Integer.parseInt(request.getParameter("cantidadMeses")));
    
  
    modelo.clsConexionBD  cnn = new modelo.clsConexionBD();
   
        
    
       
        
        
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
    pdf.crearContrato("a", "b", "c", "d","arrendamiento", codigoContrato, contrato, cantidadMeses, fechaIni, cifra, diasPlazo);
   


        %>
</body>
</html>