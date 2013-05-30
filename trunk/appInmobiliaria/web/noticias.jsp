<%-- 
    Document   : noticias
    Created on : 27-may-2013, 14:23:21
    Author     : liliana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.clsConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/ofertas.css">
        <script src="Noticias/jquery-1.2.6.js" type="text/javascript"></script>
        <script src="sitio/js/ofertas.js" type="text/javascript"></script>
    </head>
    <body>
           <div id="apDiv1">
                            <div id="sidebar"><center><h1>OFERTAS</h1></center>
                                <ul class="spy">
                                    <%
                                        clsConexionBD con = new clsConexionBD();//INSTANCIA DE LA CONEXION
                                        ResultSet rs = con.consultar("select * from fotos");//PASA EL RESULTADO DEL SQL A UN VAR. rs
                                        while (rs.next()) {//recorre todos los registros
                                            out.print("<li>");
                                            out.print("<center><a><img onclick='GuargarId(this)' width='120' height='80' src='"+rs.getString("archivo")+"'/></a><center/>");
                                            //donde src contiene los datos de la columna archivo
                                            out.print("</li>");
                                        }
                                    %>
                                </ul>
                            </div>    
                        </div>
    </body>
</html>
