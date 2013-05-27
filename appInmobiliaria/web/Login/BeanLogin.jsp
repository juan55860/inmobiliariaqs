<%-- 
    Document   : BeanaddInmueble
    Created on : 24/04/2013, 10:36:28 AM
    Author     : Sandro
--%>

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
            boolean res = new ctrlIngresarPersona().login(b.getNombre(), b.getContrasena());
            if (res) {
                session.setAttribute("theName", b.getNombre());
                session.setAttribute("thePass", b.getContrasena());
        %>
        <script>
            window.top.location.href = "../Administrador/Administrador.jsp";
        </script>
         
        <h3><font color="green">Fue ingresada correctamente el inmueble</font></h3>
            <%  } else {

            %>
        <font color="red"> Contraseña o usuario invalido</font>
        <%            }
        %>
        <body>

        </body>
    </html>
</jsp:useBean>
