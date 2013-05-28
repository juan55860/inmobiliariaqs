<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from comerciales where validacion <> 'TRUE' OR validacion is null ",15));
%>