<%-- 
    Document   : admDocumento
    Created on : 6/06/2012, 09:18:10 PM
    Author     : amartinez
--%>

<%@page import="sun.font.Script"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adm</title>
    </head>
    <body>
        <%
            String oper = request.getParameter("oper");
            controladores.clsDAOInmueble obj = new controladores.clsDAOInmueble();
            obj.setCodigo(request.getParameter("codigo"));
            obj.setCodigotipoinmueble(request.getParameter("codigotipoinmueble"));
            obj.setPrecio(request.getParameter("precio"));
            obj.setBarrio(request.getParameter("barrio"));
            obj.setDireccion(request.getParameter("direccion"));
            obj.setCodigopropietario(request.getParameter("codigopropietario"));
            obj.setPrioridad(request.getParameter("prioridad"));
            obj.setEstadocheck(request.getParameter("estadocheck"));
            obj.setLongitud(request.getParameter("longitud"));
            obj.setNumhabitaciones(request.getParameter("numhabitaciones"));








            if (oper.equals("add")) {
                // if (obj.insertar().equals("1")) {
%>
        <script>
            document.location="grdDocumento.jsp";
        </script>        
        <%                    }
            // } else {
            if (oper.equals("edit")) {
                //   obj.insertar2();
%>
        <script>
            document.location="grdSeries2.jsp";
        </script>   
        //
        <%
            if (obj.modificar()) {
        %>
        <script>
            document.location="grdDocumento.jsp";
        </script>      
        <%                        }
        } else {
            if (oper.equals("del")) {
                // if (obj.eliminar()) {
%>
        <script>
            document.location="grdDocumento.jsp";
            
        </script>        
        <%                        }
                }
            
        

        %>
    </body>
</html>
}
