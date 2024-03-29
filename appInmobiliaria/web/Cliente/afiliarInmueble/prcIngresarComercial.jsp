<%-- 
    Document   : prcRegistrarInmueble
    Created on : 22/04/2013, 10:33:20 PM
    Author     : Camilo
--%>

<%@page import="modelo.Solicitud"%>
<%@page import="controladores.ctrlIngresarSolicitud"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="modelo.clsConexionBD"%>
<%@page import="modelo.Comercial"%>
<%@page import="controladores.ctrlIngresarComercial"%>
<%@page import="modelo.Persona"%>
<%@page import="modelo.Inmueble"%>
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head><script>
        function redireccionar() {
            window.location.href = "frmSeleccionInmueble.jsp";
        }

        </script>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <style type="text/css">
            body,td,th {
                color: #000;
            }
            body {
                background-color: #666;
            }
        </style>
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/reset.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/grid_12.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/slider-2.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/jqtransform.css">

        <script src="../../sitio/js/jquery-1.7.min.js"></script>
        <script src="../../sitio/js/jquery.easing.1.3.js"></script>
        <script src="../../sitio/js/cufon-yui.js"></script>
        <script src="../../sitio/js/vegur_400.font.js"></script>
        <script src="../../sitio/js/Vegur_bold_700.font.js"></script>
        <script src="../../sitio/js/cufon-replace.js"></script>
        <script src="../../sitio/js/tms-0.4.x.js"></script>
        <script src="../../sitio/js/jquery.jqtransform.js"></script>
        <script src="../../sitio/js/FF-cash.js"></script>
        <script>
            $(document).ready(function() {
                $('.form-1').jqTransform();
                $('.slider')._TMS({
                    show: 0,
                    pauseOnHover: true,
                    prevBu: '.prev',
                    nextBu: '.next',
                    playBu: false,
                    duration: 1000,
                    preset: 'fade',
                    pagination: true,
                    pagNums: false,
                    slideshow: 7000,
                    numStatus: false,
                    banners: false,
                    waitBannerAnimation: false,
                    progressBar: false
                })
            });
        </script>

        <style type="text/css">
            #apDiv1 {
                position:absolute;
                left:191px;
                top:476px;
                width:802px;
                height:677px;
                z-index:1;

            }
            #apDiv2 {
                position:absolute;
                left:362px;
                top:493px;
                width:721px;
                height:535px;
                z-index:1;
                font: 20px Arial,Helvetica,sans-serif; color:rgb(83,83,83)
            }
        </style>
    </head>
    <body style="background-color: white; color: black;"><header>
            <div>
                <h1><a href="../../index.jsp"><img src="../../sitio/images/logo.jpg" alt=""></a></h1>
                <div class="social-icons">
                    <span>Encuentranos en</span>
                    <a href="#" class="icon-3"></a>
                    <a href="#" class="icon-2"></a>
                    <a href="#" class="icon-1"></a>
                </div>
                <div id="slide">		
                    <div class="slider">
                        <ul class="items">
                            <li><img src="../../sitio/images/slider-1-small.jpg" alt="" /></li>
                            <li>k</li>
                            <li><img src="../../sitio/images/slider-3-small.jpg" alt="" /></li>
                        </ul>
                        <p>&nbsp;</p>
                    </div>	
                    <a href="#" class="prev"></a><a href="#" class="next"></a>
                </div>
                <nav>
                    <ul class="menu">
                        <li><a href="../ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                        <li><a href="#" target="frdirect">Prioridad</a></li>
                        <li><a href="#" target="frdirect">Inmuebles</a></li>
                        <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                        <li><a href="../Administrador.jsp">Archivos</a></li>

                    </ul>
                </nav>
            </div>
        </header>
        <%
            int codigoPropietario = Integer.parseInt(request.getParameter("ide"));
            String precio = request.getParameter("precio");
            String direccion = request.getParameter("direccion");
            int area = Integer.parseInt(request.getParameter("area"));
            String estado = request.getParameter("estado");
            String descripcion = request.getParameter("descripcion");
            Calendar fecha = new GregorianCalendar();
            String estrato = request.getParameter("estrato");

            String tipoInmueble = request.getParameter("tipoInmueble");
            String barrio = request.getParameter("nombre");
            int banos = Integer.parseInt(request.getParameter("numbanios"));
            int numeroPisos = Integer.parseInt(request.getParameter("numpisos"));
            ctrlIngresarComercial ctrlComercial = new ctrlIngresarComercial();
            Comercial comercial = new Comercial(tipoInmueble, banos, numeroPisos, barrio);
            comercial.setCodPropietario(codigoPropietario);
            comercial.setPrecio(precio);
            comercial.setDireccion(direccion);
            comercial.setArea(area);
            comercial.setEstado(estado);
            comercial.setDescripcion(descripcion);
            comercial.setEstrato(estrato);
            comercial.setFechaDeRegistro(fecha.getTime());
            comercial.setValidacion(false);
            comercial.setPrioridad(1);
            String res = ctrlComercial.insertar(comercial);
            if (res.equals("")) {%>
        <script>
            alert("Datos del Comercial correctos");
        </script>
        <%  String tabla = request.getParameter("tabla");
            String nombre = request.getParameter("nombreSol");
            String apellido = request.getParameter("apellido");
            int telefono = Integer.parseInt(request.getParameter("telefono"));
            String correo = request.getParameter("email");
            ctrlIngresarSolicitud ctrlSolicitud = new ctrlIngresarSolicitud();
            Solicitud solicitud = new Solicitud(nombre, apellido, telefono, correo);
            String resultado = ctrlSolicitud.insertar(solicitud, tabla);
            if (resultado.equals("")) {%>  
        <script>
            alert("Se inserto la solicitud correctamente");
            redireccionar();
        </script>
        <%} else {%>
        <script>
            alert("NO se inserto la solicitud correctamente");
        </script>
        <%}} else {%>
        <script>
            alert("No inserto");
            redireccionar();
        </script>
        <%}%>
    </body>
</html>