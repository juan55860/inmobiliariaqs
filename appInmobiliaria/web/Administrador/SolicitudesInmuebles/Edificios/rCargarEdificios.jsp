<%
    modelo.clsConexionBD cnn = new modelo.clsConexionBD();
    out.print(cnn.getJSON("Select * from edificios where validacion <> 'TRUE' OR validacion is null ", 14));
%>