
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
            if (b.getOpcion().equals("actualiza")) {
                boolean res = new ctrlIngresarPersona().actualizar(b.getNombre(), b.getDireccion(), b.getTelefono(), b.getCorreo(), b.getContrasena());
                if (res) {
        %>
        <script type="text/javascript">
            alert("Los datos han sido actualizados!");
        </script>
        <%  } else {
        %>
        <script type="text/javascript">
            alert("No se pudo modificar!");
        </script>
        <%            }

        } else if (b.getOpcion().equals("elimina")) {
            boolean res = new ctrlIngresarPersona().eliminar(b.getNombre());
            if (res) {
        %>
        <script type="text/javascript">
            alert("No se pudo eliminar");
        </script>
        <%  } else {
        %><script type="text/javascript">
            alert("Eliminado!");
        </script><%                }
        } else if (b.getOpcion().equals("actualizar")) {
            session.setAttribute("cambiar", b.getNombre());
        %><script type="text/javascript">
                    window.top.location.href = "frmActualizarCliente.jsp";
        </script><%

            }
            else if (b.getOpcion().equals("crear")) {
        %><script type="text/javascript">
                    window.top.location.href = "../IngresarClientes/frmRegistrarCliente.jsp";
        </script><%

            }




        %>
        <body>

            <script type="text/javascript">
                window.top.location.href = "Actualizar.jsp";
            </script>


        </body>
    </html>
</jsp:useBean>