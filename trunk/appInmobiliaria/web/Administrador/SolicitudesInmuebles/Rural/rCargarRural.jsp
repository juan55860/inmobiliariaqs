<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from rurales where validacion <> 'TRUE' OR validacion is null ",15));
%>