
<%@page import="controladores.ctrlIngresarPersona"%>
<%@page import="modelo.Persona"%>
<jsp:useBean id="b" scope="page" class="modelo.Persona">
    <jsp:setProperty name="b" property="*"/>
<%@ page contentType="text/html; charset=windows-1252" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Documento sin t&iacute;tulo</title>
</head>
<%
    boolean res=new ctrlIngresarPersona().actualizar(b.getNombre(), b.getDireccion(), b.getTelefono(), b.getCorreo(), b.getContrasena());
if (res){
  %>
    <script type="text/javascript">
          alert("Sus datos han sido actualizados!");
          window.close();
      </script>
  <%
}
else{
  %><font color="red">No se pudo realizar el cambio.</font><%
}
%>
<body>

</body>
</html>
</jsp:useBean>