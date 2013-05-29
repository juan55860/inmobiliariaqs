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
            boolean res = new ctrlIngresarPersona().login(b.getNombre(), b.getContrasena(), b.getRol());
            if (res) {
                session.setAttribute("theName", b.getNombre());
                session.setAttribute("thePass", b.getContrasena());
                session.setAttribute("theRol", b.getRol());
                if (b.getRol().equals("administrador")) {
        %>
        <script>
            window.top.location.href = "../Administrador/Administrador.jsp";
        </script>
        <% }
                else{
        %>
        <script>
            window.top.location.href = "../Cliente/gestionarUsuario/frmAdministrarDatos.jsp";
        </script>
                    <%
                }
        %>
            <%  } else {

            %>
        <font color="red"> Contraseña o usuario invalido</font>
        <%            }
        %>
        <body>

        </body>
    </html>
</jsp:useBean>
