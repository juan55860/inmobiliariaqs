<%-- 
    Document   : reporteError
    Created on : 7/06/2013, 03:01:06 PM
    Author     : familia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link rel="stylesheet" href="../../js/Dialog/jquery-ui.css"/>
         <link rel="stylesheet" href="../../js/Dialog/style.css" />
<script src="../../js/Dialog/jquery-1.9.1.js"></script>
<script src="../../js/Dialog/jquery-ui.js"></script>
 <script>
	$(function() {
		$( "#dialog" ).dialog();
	});
	</script>

    </head>
    <body>
        
        <div id="dialog" title="Mensaje Importante:" >
	<p>¡Error el año Inicial debe ser Mayor o Igual que el año Final!</p>
</div>
    </body>
</html>
