<%-- 
    Document   : newjsp3
    Created on : 18/05/2013, 01:16:07 PM
    Author     : PUBLICO
--%>

<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("numero", request.getParameter("reporte"));
            String seleccion = session.getAttribute("numero").toString();
            //out.print("a"+seleccion);
            if (seleccion.equals("rep1")) {
                response.sendRedirect("rep01InmArr/reporteArrendados.jsp");
            } else if (seleccion.equals("rep2")) {
                response.sendRedirect("rep02InmPendArr/reportePendArrendar.jsp");
            } else if (seleccion.equals("rep3")) {
                response.sendRedirect("rep03InmVen/reporteVendidos.jsp");
            } else if (seleccion.equals("rep4")) {
                response.sendRedirect("rep04InmPendVen/reportePendVender.jsp");
            } else if (seleccion.equals("rep5")) {
                response.sendRedirect("rep05InmOfe/reporteOfertas.jsp");
            } else if (seleccion.equals("rep6")) {
                response.sendRedirect("rep06ArrAno/opcionFecha.jsp");
            } else if (seleccion.equals("rep7")) {
                response.sendRedirect("rep07ArrMes/opcionFechaMes.jsp");
            } else if (seleccion.equals("rep8")) {
                response.sendRedirect("rep08VenAno/opcionFechaVentas.jsp");
            } else if (seleccion.equals("rep9")) {
                response.sendRedirect("rep09VenMes/opcionFechaVentasMes.jsp");
            } else if (seleccion.equals("rep10")) {
                response.sendRedirect("rep10UsuAfiAno/opcionFechaUsuarios.jsp");
            } else if (seleccion.equals("rep11")) {
                response.sendRedirect("rep11UsuAfiMes/opcionFechaUsuariosMes.jsp");
            } else if (seleccion.equals("rep12")) {
                response.sendRedirect("rep12InmAfiAno/opcionFechaInmuebles.jsp");
            } else if (seleccion.equals("rep13")) {
                response.sendRedirect("rep13InmAfiMes/opcionFechaInmueblesMes.jsp");
            }
        %>


    </script>
</body>
</html>
