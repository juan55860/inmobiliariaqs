<%
modelo.clsConexionBD cnn = new modelo.clsConexionBD();
out.print(cnn.getJSON("Select * from inmuebles order by prioridad DESC limit 10",9));
%>