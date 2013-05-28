<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from lotes where validacion <> 'TRUE' OR validacion is null ",12));
%>