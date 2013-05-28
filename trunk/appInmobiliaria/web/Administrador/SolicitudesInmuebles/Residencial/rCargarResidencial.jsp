<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from residenciales where validacion <> 'TRUE' OR validacion is null ",16));
%>