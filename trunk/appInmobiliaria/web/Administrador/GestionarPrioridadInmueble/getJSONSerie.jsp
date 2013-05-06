<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from inmuebles",10));
%>